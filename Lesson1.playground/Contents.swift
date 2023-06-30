import UIKit

func cycle() {
    
    if true{
        print("Luck")
    } else {
        print("Sad")
    }
    
    //guard Bool.random() else { return }
    print("Luck 2")
    
    let integer : Int = 9
    switch integer {
    case -1:
        break
    case 1:
        print("1!")
    case 2:
        print("2!")
    case 3...10:
        print("3...10")
    case 11..<20:
        print("11...19")
    default:
        print("number != 1...19")
        
    }
}
cycle()
func cycle2() {
    for i in 0..<5 {
        print(i)
    }
}
cycle2()

//Array, Dictionary, Set
var myIntArray = [1, 2, 3]
var myIntArray2: [Int] = [1, 2, 3]
var myIntArray3: Array<Int> = [1, 2, 3]
var myIntArray4 = Array<Int>()
var myIntArray5 = [Int]()
var myINtArray6: [Int] = []

if myIntArray.count == 3 {
    print("666")
}
print(myIntArray.first)
print(myIntArray.last)
myIntArray.append(4)
myIntArray.remove(at: 1)
myIntArray.sorted()
let reversedArray: [Int] = myIntArray.reversed()

for element in myIntArray {
    print(element)
}


//Dictionary
var gasolinePrices: [String: Int] = ["92": 50, "95": 58]
//for (key, value) in gasolinePrices

let price = gasolinePrices["92"]
gasolinePrices["92"] = 20

//Set
var intSet: Set<Int> = [1, 2, 3, 4]
intSet.insert(10)
intSet.contains(10)

//func
func functions() {
    print(#function)
}

func sumOfInt(a: Int, b: Int) -> Int {
    a + b
}

func printSum(a: Int, b: Int) -> Void {
    print(a + b)
}

functions()
printSum(a: 1, b: 2)

let sumOfIntFunc: (Int, Int) -> Int = {first, second in
    return first + second + first + second
}
sumOfIntFunc(1, 1)

/*func repeatSummator(a: Int, b: Int, n: Int, summator: (Int, Int) -> Int) -> Int {
    var result = 0
    for _ int 0..<n {
        result += summator(a, b)
    }
    return result
}
 */

//repeatSummator(a: 1, b: 2, n: 3, summator: sumOfIntFunc)


class Animal {
    let age: Int
    let name: String
    
    init(age: Int, name: String) {
        self.age = age
        self.name = name
    }
    
    init() {
        age = .zero
        name = "noname"
    }
    
    func voice() {
        
    }
}

class Dog: Animal {
    
    var isLoveCats = false
    
    override func voice() {
        print("whow")
    }
}

//enum

enum StudentType {
    case grant
    case budget
    case paid(amount: Int)
}

let studentType: StudentType = .paid(amount: 114_000)

//Struct

struct Student {
    let name: String
    let type: StudentType
    let averageScore: Int
    
    func hello() {
        print("hello")
    }
}

var dog = Dog()
var dog2 = dog
dog.isLoveCats = true
print(dog.isLoveCats)
print(dog2.isLoveCats)

var student1 = Student(name: "Danil", type: .budget, averageScore: 56)
var student2 = student1

student1.averageScore = 100

print(student1.averageScore)
print(student2.averageScore)

//Interface

protocol Animal2 {
    var age: Int {get set}
    var name: String {get}
    func voice()
}
