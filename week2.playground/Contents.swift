import UIKit

func isEven(number : Int) -> Bool{
    if number % 2 == 0 {
        return true
    }
    return false
}
isEven(number: 4)

func counts(arr: [Int], _ value: inout Int) -> Int{
    var counter: Int = 0
    for element in arr {
        if element == value {
            counter += 1
        }
    }
    return counter
}
var num = 2
counts(arr: [2, 1, 2, 2, 4, 4], &num)

func sumOfProducts(arrFirst: [Int], arrSecond: [Int]) -> Int{
    var result: Int = 0
    for (num1, num2) in zip(arrFirst,arrSecond){
        result += num1 * num2
    }
    return result
}

var sum : ([Int], [Int]) -> Int = sumOfProducts
sum([3,4,5], [6,7,8])

enum TransortType {
    case airplane
    case train
    case car
}
enum ShapeType {
    case circle (Double)
    case rectangle (Double, Double)
}
func calculateArea (shape: ShapeType) -> Double {
    switch shape{
    case .circle(let radius):
        return radius * radius * 3.14
    case .rectangle(let width, let height):
        return width * height
    }
}

let shape: ShapeType = .circle(5)
let resultOfCalculation = calculateArea(shape: shape)

enum ResultType {
    case success (Int)
    case failure (String)
}
func getGrade (completion : (ResultType) -> Void){
    let isSuccess = Bool.random()
    if isSuccess {
        
    }else {
        completion
    }
}
class Circle {
    let radius : Double
    init(radius: Double) {
        self.radius = radius
    }
}
let circle = Circle(radius: 5.0)

func calculateArea(circle: Circle) -> Double{
    circle.radius * circle.radius * 3.14
}
calculateArea(circle: circle)

class Rectangle {
    let width: Double
    let height: Double
    init(width: Double, height: Double){
        self.width = width
        self.height = height
    }
    func calculateArea() -> Double{
        width * height
    }
}
let rectangle = Rectangle(width: 5, height: 10)
rectangle.calculateArea()

