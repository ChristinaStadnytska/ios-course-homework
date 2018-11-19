//
//  ViewController.swift
//  Notes
//
//  Created by macos on 11/18/18.
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
var note = [Note]()
var newNote = Note(date: Date(), name: "", text: "")

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var ListOfNotes: UITableView!
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return note.count
    }
    
    
    // Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
    // Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellIdentifier", for: indexPath)
        let noteCell = note[indexPath.row]
        cell.textLabel?.text = noteCell.name
        return cell
    }
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        tableView.deselectRow(at: indexPath, animated: true)
        print(note[indexPath.row])
    }
    
    
    
    @IBAction func cancel(segue: UIStoryboardSegue){
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func save(segue: UIStoryboardSegue){
        let noteDetailVC = segue.source as! NoteDetailViewController
        newNote = noteDetailVC.object
        
        note.append(newNote)
        ListOfNotes.reloadData()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

