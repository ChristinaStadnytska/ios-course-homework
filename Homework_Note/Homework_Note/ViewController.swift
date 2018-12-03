//
//  ViewController.swift
//  Homework_Note
//
//  Created by macos on 12/3/18.
//  Copyright © 2018 macos. All rights reserved.
//

// Винеси Note в окремий файл
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

// 1. Чому у нас масив ноутів НЕ у вью контроллері, а як загальна змінна ?
// 2. Чому він пустий ? Добав хоча б 10 тестових Ноутів
var note = [Note]()


import UIKit


// Пернеіменуй клас і файл у ListViewController
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
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
            let destinationVC = segue.destination as! AddNoteViewController
            destinationVC.delegate = self
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

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tblNote.delegate = self
        tblNote.dataSource = self
        
        // Не треба робити релоад ТВ зразу, вона і так почне сама зтягувати данні
        tblNote.reloadData()
        
    }
}


extension ViewController: NoteManagingDelegate {
    func save(_ note: Note) {
        // Реалізуй добавляння нової Ноути у масив Ноутів
        
        // і розкоментуй наступну стрічку
        //tblNote.reloadData()
    }
}



