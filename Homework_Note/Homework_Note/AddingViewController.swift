//
//  AddingViewController.swift
//  Homework_Note
//
//  Created by macos on 12/3/18.
//  Copyright © 2018 macos. All rights reserved.
//

/*import UIKit

protocol SaveDataDelegate: class {
    func saved(_ sender: AddingViewController)
}

class AddingViewController: UIViewController {

    @IBOutlet weak var nameLabel: UITextField!
    @IBOutlet weak var textLabel: UITextField!
    @IBOutlet weak var tagsLabel: UITextField!
    
    var saveObject: Note?
    var delegate: SaveDataDelegate?
    
    func prepareNewNote(note: Note){
        saveObject = note
        if let unwrappedName = nameLabel.text, let unwrappedText = textLabel.text, let unwrappedTags = tagsLabel.text{
            saveObject = Note(date: Date(), name: unwrappedName, text: unwrappedText, tagArray: [unwrappedTags])
        }
    }
    
    @IBAction func saveButton(_ sender: Any) {
        delegate?.saved(self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
}*/
