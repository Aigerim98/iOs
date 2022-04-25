import UIKit

func hasZero(array : [Int]) -> Bool{
    for element in array {
        if element == 0 {
            return true
        }
    }
    return false
}

func hasTwoZero(array : [Int]) -> Bool {
    var counter : Int = 0
    for element in array {
        if element == 0 {
            counter += 1;
        }
    }
    if counter == 2 {
        return true
    }
    return false
}
func threeZeros(array : [Int]) -> Bool {
    if array.count < 3 {return false}
    var counter : Int = 0
    for element in array{
        if element != 0 {
            counter = 0
        }else {
            counter += 1
            if (counter == 3){
                return true
            }
        }
    }
    return false
}
var array = [1, 2, 3, 4, 0, 0]
threeZeros(array: array)
func sumNumbers(array : [Int]) -> Int {
    var sum : Int = 0
    for element in array {
        sum += element
    }
    return sum
}
func reverseNumbers(array : [Int]) -> [Int]{
    var newArr: [Int] = []
    var lastIndex = array.count - 1
    for index in 0...lastIndex{
        newArr.append(array[lastIndex - index])
    }
    return newArr
}

func evenOdd(array : [Int]) -> (even : Int, odd : Int){
    var evenCounter : Int = 0
    var oddCounter : Int = 0
    for element in array{
        if element % 2 == 0{
            evenCounter += 1
        }else {
            oddCounter += 1
        }
    }
    return (evenCounter, oddCounter)
}

func diffMaxMin(array : [Int]) -> Int {
    var currentMin = array[0]
    var currentMax = array[0]
    for element in array {
        if element < currentMin{
            currentMin = element
        }else if element > currentMax{
            currentMax = element
        }
    }
    var difference = currentMax - currentMin
    return difference
}
