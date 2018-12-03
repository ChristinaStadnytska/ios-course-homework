//
//  AddNoteViewController.swift
//  Homework_Note
//
//  Created by Serhii Miskiv on 12/3/18.
//  Copyright © 2018 macos. All rights reserved.
//

import UIKit

protocol NoteManagingDelegate: class {
    func save(_ note: Note)
}

// Створи можливість добавляти у ноуту всю інфу:
// 1. Назву
// 2. Теги
// 3. Текст
class AddNoteViewController: UIViewController {

    weak var delegate: NoteManagingDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    
    // Створи екшин для кнопки "Save" яка буде викликати
    // delegate?.save(newNote)
    // і передай у нього нову Ноуту

}
