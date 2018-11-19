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
    var object = Note(date: Date(), name: "", text: "")
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "saveSegue"{
            object = Note(date: Date(), name: noteText.text!, text: noteName.text!)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
