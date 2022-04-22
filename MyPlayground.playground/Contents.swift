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
    var cnt : Int = 0
    for element in array {
        if element == 0 {
            cnt += 1;
        }
    }
    if cnt == 2 {
        return true
    }
    return false
}
func threezeros (array : [Int]) -> Bool {

    var lastindex = array.count - 1
    for index in 0...lastindex {
        if index != lastindex{
            if array[index] == 0 && array[index + 1] == 0 && array[index + 2] == 0 {
                return true
            }
        }else if index > 2{
            if array[index] == 0 && array[index-1] == 0 && array[index-2] == 0 {
                return true
            }
        }
    }
    return false;
}
func sumOfArray(array : [Int]) -> Int {
    var sum : Int = 0
    for element in array {
        sum += element
    }
    return sum
}
func reverseArray(array : [Int]) -> [Int]{
    var newArr: [Int] = []
    var lastIndex = array.count - 1
    for index in 0...lastIndex{
        newArr.append(array[lastIndex - index])
    }
    return newArr
}

func evenOdd(array : [Int]) -> (even : Int, odd : Int){
    var evenCnt : Int = 0
    var oddCnt : Int = 0
    for element in array{
        if element % 2 == 0{
            evenCnt += 1
        }else {
            oddCnt += 1
        }
    }
    return (evenCnt, oddCnt)
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
    var diff = currentMax - currentMin
    return diff
}
