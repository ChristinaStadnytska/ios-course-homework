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
var note = [Note]()

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, AddProtocol {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var ListOfNotes: UITableView!
    
    weak var delegate:AddProtocol?
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return note.count
    }
    
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
    
    
 
    
    @IBAction func cancel(_ segue: UIStoryboardSegue){
        if segue.identifier == "toAdd" {        dismiss(animated: true, completion: nil)}
    }
    
    @IBAction func save(_ segue: UIStoryboardSegue){
        guard let noteDetailsVC = segue.source as? NoteDetailViewController,
            let newNote = noteDetailsVC.object else {return}
        
        note.append(newNote)
        let indexPath = IndexPath(row: note.count - 1, section: 0)
        ListOfNotes.insertRows(at: [indexPath], with: .automatic)
    }
    
    private func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            note.remove(at: indexPath.row)
        }
        ListOfNotes.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
            ListOfNotes.delegate = self
            ListOfNotes.dataSource = self
        
        self.imageView.contentMode = .scaleAspectFit
        self.imageView.layer.cornerRadius = 10
    }

}

