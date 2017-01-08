//: Playground - noun: a place where people can play

import UIKit

let sortedArray = [1, 34,45,55,63,66,78,90,100, 134,167,300, 400, 501, 601]
print(sortedArray.count)

func recursiveBinary(findElement element: Int, sortedArray: [Int]) -> Bool {
    let midPoint = sortedArray.count / 2
    let midElement = sortedArray[midPoint]
    print(midElement)
    print(sortedArray)
    if sortedArray.count == 1 && midElement != element {
        return false
    } else {
        if midElement == element {
            return true
        } else if midElement > element {
            return recursiveBinary(findElement: element, sortedArray: Array(sortedArray[0..<midPoint]))
        } else {
            return recursiveBinary(findElement: element, sortedArray: Array(sortedArray[(midPoint + 1)..<sortedArray.count]))
        }
    }
}
print(recursiveBinary(findElement: 101, sortedArray: sortedArray))












