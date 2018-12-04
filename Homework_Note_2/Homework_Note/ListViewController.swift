//
//  ViewController.swift
//  Homework_Note
//
//  Created by macos on 12/3/18.
//  Copyright © 2018 macos. All rights reserved.
//
import UIKit

class ListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var note = [Note]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //note = [Note(date: Date(), name: "2nd note", text: "2nd text...", tagArray: ["tags"])]
        tblNote.delegate = self
        tblNote.dataSource = self
        
    }
    
    @IBOutlet weak var tblNote: UITableView!
    
    @IBAction func goToAddNote(_ sender: Any) {
        self.performSegue(withIdentifier: "segueAdd", sender: self)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "infoNote", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let info = segue.identifier as? InfoNoteViewController{
            info.object = note[(tblNote.indexPathForSelectedRow?.row)!]
            tblNote.deselectRow(at: tblNote.indexPathForSelectedRow!, animated: true)
        }
        
        
        if segue.identifier == "segueAdd" {
            if let destinationVC = segue.destination as? AddNoteViewController{
                destinationVC.delegate = self
            }
        }
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return note.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! VCTableViewCell
        let noteCell = note[indexPath.row]
        // cell.imageCell.image = UIImage(named: (noteCell.image + ".jpg"))
        cell.labelCell.text = noteCell.name
        
        return cell
    }
    
    
}


extension ListViewController: NoteManagingDelegate {
    func save(_ note: Note) {
        // Реалізуй добавляння нової Ноути у масив Ноутів
        
        // і розкоментуй наступну стрічку
        //tblNote.reloadData()
    }
}



