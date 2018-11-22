//
//  NoteDetailViewController.swift
//  Notes
//
//  Created by macos on 11/19/18.
//  Copyright © 2018 macos. All rights reserved.
//

import UIKit

class NoteDetailViewController: UIViewController {
    
    @IBOutlet weak var noteName: UITextField!
    @IBOutlet weak var noteText: UITextField!
    @IBOutlet weak var noteTag: UITextField!
    
    var object: Note?
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "saveNote",
            let unwrappedName = noteName.text,
            let unwrappedText = noteText.text, let unwrappedTag = noteTag.text{
            object = Note(date: Date(), name: unwrappedName, text: unwrappedText, tagArray: [unwrappedTag])
            }
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // *** Border Style for TextField of Name ***
        
        self.noteName.layer.borderColor = UIColor(red: 196/255, green: 194/255, blue: 194/255, alpha: 0.8).cgColor
        self.noteName.layer.borderWidth = CGFloat(Float(1.0))
        self.noteName.layer.cornerRadius = CGFloat(Float(5.0))
        
        
        // *** Border Style for TextField of Text ***
        
        self.noteText.layer.borderColor = UIColor(red: 196/255, green: 194/255, blue: 194/255, alpha: 0.8).cgColor
        self.noteText.layer.borderWidth = CGFloat(Float(1.0))
        self.noteText.layer.cornerRadius = CGFloat(Float(5.0))
        
        
        // *** Border Style for TextField of Tags ***
        
        self.noteTag.layer.borderColor = UIColor(red: 196/255, green: 194/255, blue: 194/255, alpha: 0.8).cgColor
        self.noteTag.layer.borderWidth = CGFloat(Float(1.0))
        self.noteTag.layer.cornerRadius = CGFloat(Float(5.0))
    }
}
