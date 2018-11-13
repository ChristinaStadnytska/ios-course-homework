import UIKit

protocol Equatable{}

class classArray: Equatable{
    var number: Int
    init(number: Int){
        self.number = number
    }
    
    static func == (array1: classArray, array2: classArray) -> Bool{
        return array1.number == array2.number
    }
}

extension Array where Element: classArray{
    mutating func removeItembyValue(number: Int) -> [Element]{
        return self.filter({$0.number != number})
    }
    
    mutating func removeItembyIndex(index: Int?){
        
        guard let checkedIndex = index else{
            print("Array doesn't have that index!")
            return
        }
        
        for item in self{
            if item.number == index{
                self.remove(at: checkedIndex)
            }
        }
    }
}

let item1 = classArray(number: 2)
let item2 = classArray(number: 9)
let item3 = classArray(number: 5)

var items = [item1, item2, item3]

var mutatedItems = items.removeItembyValue(number: 9)
items.removeItembyIndex(index: 2)
