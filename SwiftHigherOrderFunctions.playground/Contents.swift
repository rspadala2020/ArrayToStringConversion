//: Playground - noun: a place where people can play

import UIKit
import Foundation

var str = "Hello, playground"

class HigherOrder {
    
    /*
     
     Convert String to Array
     
     */
    
    func convertStringToArray(str:String) -> [Int] {
        
        if str.count > 0 {
            
            let arr = str.components(separatedBy: ",")
            
            let intArray = arr.map
            {
                Int($0)!
            }
            return intArray
            
            
        }else{
            return [Int]()
        }
        
    }
    
    /*
     
     Convert Array to String
     
     */
    func convertArrayToString(selectedArray:[Int]) -> String {
        var str = ""
        if selectedArray.count > 0 {
            
            let stringArray = selectedArray.map
            {
                String($0)
            }
            str = stringArray.joined(separator: ",")
            
        }
        return str
        
    }
    
}

let high = HigherOrder()
let numbersString = "0,1,2,3,4,5,6,7"
let numberArray = high.convertStringToArray(str: numbersString) //Returns From String to Array
let numberArr = [1, 2, 3, 4, 5, 6]
let numberString = high.convertArrayToString(selectedArray: numberArr) //Returns From Array to String




