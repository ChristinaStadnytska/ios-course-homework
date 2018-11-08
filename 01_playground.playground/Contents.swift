import UIKit

class Diary{
    
    func description(name: String?, text: String?, tagArray: [String?]){
        
        let date: Date
        init?(date: Date){
            if (self.date = date){print(date)}
            if (self.date != date){return nil}
        }
        
        guard let checkedName = name else{return}
        guard let checkedText = text else{return}
        
        print ("\n\(checkedName) \n\(checkedText) \n")
        
        for tag in tagArray{
            if let tag = tag{
                print("[\(tag)]")
            }
        }
    }
}
Diary.description(name: "lesson", text: "ios", tagArray: "good")
Diary.description()

