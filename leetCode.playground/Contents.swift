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

//Given an integer x, return true if x is palindrome integer.
// An integer is a palindrome when it reads the same backward as forward.

func isPalindrome(number: Int) -> Bool{
    var reversed: Int = 0
    var remainder: Int = 0
    var temp = number
    while temp != 0 {
        remainder = temp % 10
        reversed = reversed * 10 + remainder
        temp = temp / 10
    }
    if reversed == number {
        return true
    }
    else {return false}
}
isPalindrome(number: 1001)

let cast = ["Vivien", "Marlon", "Kim", "Karl"]
print(cast[1].contains("Mar"))

//Write a function to find the longest common prefix string amongst an array of strings.
//
//If there is no common prefix, return an empty string "".


func longestCommonPrefix(words: [String]) -> String{
    var reference: String = words[0]
    for word in words{
        while !word.hasPrefix(reference){
            reference = String(reference.dropLast())
        }
    }
    return reference
}
longestCommonPrefix(words: ["flower","flow", "flo"])


//valid parentheses
func isValid(s: String) -> Bool {
    if s.count % 2 != 0 { return false }
    let dictionary: [Character: Character] = [")": "(","]" :"[","}" :"{"]
    let open: [Character] = ["(", "[", "{"]
    var openers: [Character] = [Character]()
    for character in s {
        if open.contains(character) {
            openers.append(character)
        } else {
            if openers.last == dictionary[character] {
                print(dictionary[character]!)
                openers.removeLast()
            } else {
                return false
            }
        }
    }
    return openers.isEmpty
}
isValid(s: "([])))")

//remove duplicates from sorted array
func removeDuplicates(_ nums:inout [Int]) -> [Int]{
    let lastIndex = nums.count - 1
    var j = 0
    var current = nums.first
    for i in 1...lastIndex{
        if nums[i - j] == current{
            nums.remove(at: i - j)
            j += 1
        }else{
            current = nums[i - j]
        }
    }
    return nums
}
var arr = [1, 1, 1, 2, 2, 3, 4, 4, 5]
removeDuplicates(&arr)

func removeElements(_ nums: inout [Int], val: Int) -> [Int]{
    let lastIndex = nums.count - 1
    var j = 0
    for i in 1...lastIndex{
        if nums[i - j] == val {
            nums.remove(at: i - j)
            j += 1
        }
    }
    return nums
}
var arr2 = [1, 2, 3, 2, 4, 2, 5, 2,  2, 7]
removeElements(&arr2, val: 2)

