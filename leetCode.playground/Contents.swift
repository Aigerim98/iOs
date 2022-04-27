import UIKit
//Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
//
//You may assume that each input would have exactly one solution, and you may not use the same element twice.
//
//You can return the answer in any order.

func twoSum(array: [Int], target: Int) -> [Int]{
    var index: [Int] = []
    let  lastIndex: Int = array.count - 1
    for i in 0...lastIndex-1{
        for j in i+1...lastIndex{
            if array[i] + array[j] == target{
                index.append(i)
                index.append(j)
            }
        }
    }
    return index
}
var nums = [3,2,4]
var target: Int = 6
twoSum(array: nums, target: target)

//roman to integer
enum Roman: String{
    case I
    case V
    case X
    case L
    case C
    case D
    case M
    var number: Int{
        switch self{
        case .I:
            return 1
        case .V:
            return 5
        case .X:
            return 10
        case .L:
            return 50
        case .C:
            return 100
        case .D:
            return 500
        case .M:
            return 1000
        }
    }
}
func romanToInt(roman: String) -> Int{
    var result: Int = 0
    let arr = Array(roman).reversed()
    //var prev = Roman(rawValue: String(arr.first!))!.number
    var prev = Roman.I.number
    for element in arr{
        let cur = Roman(rawValue: String(element))!.number
        if cur < prev {
            result -= cur
        }else{
            result += cur
        }
        prev = cur
    }
    return result
}

romanToInt(roman: "IX")
