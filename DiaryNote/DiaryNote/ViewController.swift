//
//  ViewController.swift
//  DiaryNote
//
//  Created by macos on 11/21/18.
//  Copyright © 2018 macos. All rights reserved.
//

import UIKit

class Note{
    var date: Date
    var name: String
    var text: String
    
    init(date: Date, name: String, text: String) {
        self.date = Date()
        self.name = name
        self.text = text
    }
}

var lists = [Note]()

class ViewController: UITableViewController{
    //UITableViewDataSource, UITableViewDelegate {
    
    //@IBOutlet weak var tableView: UITableView!
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lists.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let noteCell = lists[indexPath.row]
        cell.textLabel?.text = noteCell.name + "\n" + noteCell.text
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    /*
    
    var nameTextField: UITextField?
    var textTextField: UITextField?
    
    @IBAction func addItem(_ sender: UIBarButtonItem) {
        let alert = UIAlertController(title: "Add Note", message: "", preferredStyle: .alert)
        alert.addTextField(configurationHandler: nameTextField)
        alert.addTextField(configurationHandler: textTextField)

        alert.addAction(UIAlertAction(title: "Add", style: .default, handler: self.okHandler))
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .destructive, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    func nameTextField(textField: UITextField!){
        nameTextField = textField
        nameTextField?.placeholder = "Title"
    }
    
    
    func textTextField(textField: UITextField!){
        textTextField = textField
        textTextField?.placeholder = "Your note..."
    }
    
    func okHandler(alert: UIAlertAction){
        let note = Note(date: Date(),name: (nameTextField?.text)!,text: (textTextField?.text)!)
        lists.append(note)
        self.tableView.reloadData()
    }
    
    
   */


}

