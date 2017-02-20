//: Playground - noun: a place where people can play

import UIKit

func adderInt(_ x: Int, _ y: Int) -> Int {
    return x + y
}

let intSum = adderInt(1,2)

func adderDouble(_ x: Double, _ y: Double) -> Double {
    return x + y
}

let doubleSum = adderDouble(1.0, 2.0)

let numbers = [1,2,3]

let firstNumber = numbers[0]

var numbersAgain = Array<Int>()
numbersAgain.append(1)
numbersAgain.append(2)
numbersAgain.append(3)

let firstNumberAgain = numbersAgain[0]

let countryCodes = ["Australia" : "AT", "United States of America" : "US", "Turkey" : "TR"]

let at = countryCodes["Australia"]

let optionalName = Optional<String>.some("John")

if let name = optionalName {
    
}

func pairsFromDictionar<KeyType, ValueType>(dictionary: [KeyType: ValueType]) -> [(KeyType, ValueType)] {
    return Array(dictionary)
}

let pairs = pairsFromDictionar(dictionary: ["minimum":199, "maximum": 299])
let morePairs = pairsFromDictionar(dictionary: [1:"Swift", 2: "Generics", 3:"Rule"])

struct Queue<Element: Equatable> {
    var elements = [Element]()
    
    mutating func enqueue(_ newElement: Element) {
        elements.append(newElement)
    }
    
    mutating func dequeue() -> Element? {
        guard !elements.isEmpty else {
            return nil
        }
        return elements.remove(at: 0)
    }
}

var q = Queue<Int>()

q.enqueue(4)
q.enqueue(2)

var q2 =  Queue<Double>()

q2.enqueue(2.2)
q2.enqueue(2.3)

func mid<T where T: Comparable>(array: [T]) -> T {
    return array.sorted()[(array.count - 1) / 2]
}

mid(array: [3,5,1,2,4])

protocol Summable { func +(lhs: Self, rhs: Self) -> Self }

extension Int: Summable {}
extension Double: Summable {}
extension String: Summable {}

func adder<T: Summable>(_ x: T, _ y: T) -> T {
    return x + y
}

let adderIntSum = adder(1,2)
let adderDoubleSum = adder(1.0,2.0)
let adderString = adder("Generics", " are Awesome!!! :]")

extension Queue {
    func peek() -> Element? {
        return elements.first
    }
}

q.peek()


extension Queue {
    func homogeneuos() -> Bool {
        if let first = elements.first {
            return !elements.contains { $0 != first }
        }
        return true
    }
}

class Box<T> {
    
}

class Gift<T>: Box<T> {
    
}

class StringBox: Box<String> {
    
}

let box = Box<Int>()
let gift = Gift<Double>()
let stringBox = StringBox()

enum Result<ValueType, ErrorType> {
    case Success(ValueType)
    case Failure(ErrorType)
}

func divideOrError(x: Int, y: Int) -> Result<Int, String> {
    guard y != 0 else {
        return Result.Failure("Division by zero is undefined")
    }
    return Result.Success(x / y)
}

let result1 = divideOrError(x: 42, y: 2)
let result2 = divideOrError(x: 42, y: 0)
