import UIKit

protocol NoteProtocol: class{}
protocol TagProtocol{}

class Note: NoteProtocol{
    var date: Date
    var title: String{
        didSet(oldTitle){
            self.date = Date()
            print("\(self.date) \n\(oldTitle) -> \(self.title)")
        }
    }
    var text: String{
        didSet(oldText){
            self.date = Date()
            print("\(self.date) \n\(oldText) -> \(self.text)")
        }
    }
    
    init(date: Date, title: String, text: String) {
        self.date = date
        self.title = title
        self.text = text
    }
    
    convenience init(){
        self.init(date: Date(), title: "", text: "")
    }
    
    deinit {
        print("Clear!")
    }
}

class Tag: TagProtocol{
    var date: Date
    var tag: String
    weak var delegate: NoteProtocol?
    
    init(date: Date, tag: String, delegate: NoteProtocol){
        self.date = date
        self.tag = tag
        self.delegate = delegate
    }
}

var myNote1 = Note(date: Date.init(), title: "Some title!", text: "Some text!")
var myTag1 = Tag(date: Date.init(), tag: "some tag", delegate: Note())
myNote1.title = "Changed title"
myNote1.text = "Changed text"
