//
//  Note.swift
//  Homework_Note
//
//  Created by macos on 12/4/18.
//  Copyright © 2018 macos. All rights reserved.
//
import UIKit

class Note{
    var date: Date
    var name: String?
    var text: String?
    var tagArray: [String?]
    // var image: UIImage
    
    init(date: Date, name: String, text: String, tagArray: [String]) {
        self.date = Date()
        self.name = name
        self.text = text
        self.tagArray = tagArray
    }
}

