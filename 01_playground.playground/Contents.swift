import UIKit

class Diary{
    var date: Date
    var name: String?
    var text: String?
    var tagArray: [String?]
    
    init(date: Date, name: String?, text: String?, tagArray: [String?]) {
        self.date = Date.init()
        self.name = name
        self.text = text
        self.tagArray = tagArray
    }
    
    convenience init?(oldDate: Date?){
        guard let checkedDate = oldDate else {return nil}
        
        if Date().compare(checkedDate) == .orderedAscending {return nil}
        
        self.init(date: Date.init(), name: nil, text: nil, tagArray: [nil])
    }
    
    func description() -> String{
        
        var value = ""
        
        guard let checkedName = name else{return ""}
        value += checkedName
        
        guard let checkedText = text else{return ""}
        
        print(date)
        
        for checkedTag in tagArray{
            guard let checkedTag = checkedTag else{return ""}
            value += " [\(checkedTag)]"
        }
        print(value)
        print(checkedText)
        return ""
    }
    
    convenience init(date: Date, text: String?){
        self.init(date: Date.init(), name: nil, text: text, tagArray: [nil])
    }
}

var diary1 = Diary(date: Date.init(), name: "Good morning", text: "It should be wonderful day", tagArray: ["Sun", "Song of birds"])

let someOldDate = Date(timeIntervalSinceReferenceDate: 1539169780)
var diary2 = Diary (oldDate: someOldDate)

var diary3 = Diary(date: Date.init(), text: "jfjf")

diary1.description()
diary2?.description()
diary3.description()
