//
//  InfoNoteViewController.swift
//  Homework_Note
//
//  Created by macos on 12/3/18.
//  Copyright © 2018 macos. All rights reserved.
//

import UIKit

class InfoNoteViewController: UIViewController {
    
    @IBOutlet weak var noteLabel: UILabel!
    
    var object: Note?
    
    ///skjghdvvsgukfguksgfusgfu
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        noteLabel.text = "(\((object?.date)!) \n\((object?.name)!) \n\((object?.text)!) \n\((object?.tagArray)!))"
    }
    
    
    
    
}
