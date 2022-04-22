import UIKit
var code: [String:String] = [
    "a" : "b",
    "b" : "c",
    "c" : "d",
    "d" : "e",
    "e" : "f",
    "f" : "g",
    "g" : "h",
    "h" : "i",
    "i" : "j",
    "j" : "k",
    "k" : "l",
    "l" : "m",
    "m" : "n",
    "n" : "o",
    "o" : "p",
    "p" : "q",
    "q" : "r",
    "r" : "s",
    "s" : "t",
    "t" : "u",
    "u" : "v",
    "v" : "w",
    "w" : "x",
    "x" : "y",
    "y" : "z",
    "z" : "a"
]
func cipherText(input: String) -> String{
    var result = ""
    for char in input{
        if code[String(char)] != nil{
            result += code[String(char)]!
        }else{
            result += String(char)
        }
    }
    return result
}
cipherText(input: "hello programmer")

func getDict(array: [Int]) -> [Int : Int]{
    var numbers: [Int : Int] = [:]
    let lastIndex = array.count - 1
    var cnt = 0
    for i in 0...lastIndex{
        cnt = 0
        var nextIndex = i + 1
        for j in 0...i{
            if (array[i] == array[j]){
                cnt += 1
            }
        }
        numbers[array[i]] = cnt
    }
    /*for element in array{
        cnt = 1
        if numbers[element] != nil {
            numbers[element] = cnt + 1;
        }else{
            numbers[element] = cnt
        }
    }*/
    return numbers
}

func calculateAvrGpa(students: [String : Double]) -> Double{
    var sum : Double = 0.0
    for gpa in students.values{
        sum += Double(gpa)
    }
    var avr : Double = sum / Double(students.count)
    return avr
}

func gpaHigherThree(student: [String : Double]) -> [String : Double]{
    var newDict: [String: Double] = [:]
    for (name, gpa) in student{
        if gpa > 3.0 {
            newDict[name] = gpa
        }
    }
    return newDict
}

func countWords(array: [String]) -> [String : Int]{
    var newDict: [String : Int] = [:]
    var cnt: Int = 0
    for sentence in array{
        var word = sentence.components(separatedBy: " ")
        cnt = word.count
        newDict[sentence] = cnt
    }
    return newDict
}
var array = [1, 2, 1, 3, 2, 4, 5, 6, 6, 5]
getDict(array: array)
var student: [String:Double] = ["aa" : 3.5, "bb" : 2.3, "cc" : 3.3]
calculateAvrGpa(students: student)
gpaHigherThree(student: student)
var sentences = ["hello singularity", "hello world", "London is the capital of Great Britain"]
countWords(array: sentences)
