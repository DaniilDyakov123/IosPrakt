import UIKit

protocol HomeworkService {
    // Функция деления с остатком, должна вернуть в первой части результат деления, во второй части остаток.
    func divideWithRemainder(_ x: Int, by y: Int) -> (Int, Int)
    
    // Функция должна вернуть числа фибоначчи.
    func fibonacci(n: Int) -> [Int]

    // Функция должна выполнить сортировку пузырьком.
    func sort(rawArray: [Int]) -> [Int]

    // Функция должна преобразовать массив строк в массив первых символов строки.
    func firstLetter(strings: [String]) -> [Character]

    // Функция должна отфильтровать массив по условию, которое приходит в параметре `condition`. (Нельзя юзать `filter` у `Array`)
    func filter(array: [Int], condition: ((Int) -> Bool)) -> [Int]
}

struct Sss: HomeworkService {
    func fibonacci(n: Int) -> [Int] {
        var array = [1, 2]
        for i in 2..<n {
            array.append(array[i - 1] + array[i - 2])
        }
        return array
    }
    
    func sort(rawArray: [Int]) -> [Int] {
        var array = rawArray
                let n = array.count
                for i in 0..<n-1 {
                    for j in 0..<n-i-1 {
                        if array[j] > array[j + 1] {
                            let temp = array[j]
                            array[j] = array[j + 1]
                            array[j + 1] = temp
                        }
                    }
                }
                
                return array
    }
    
    func firstLetter(strings: [String]) -> [Character] {
        var array = strings
        var charArr: [Character] = []
        let n = array.count
        for i in 0...n {
            var c: Character = array[i].startIndex //не могу сконвертировать
            charArr.append(c)
            
        }
        return charArr
    }
    
    func filter(array: [Int], condition: ((Int) -> Bool)) -> [Int] {
        var arr = array
        var res: [Int] = []
        let f = condition
        for i in 0...res.count {
            if (f(arr[i]) == true) {
                res.append(arr[i])
            }
        }
        return res
    }
    
    func divideWithRemainder(_ x: Int, by y: Int) -> (Int, Int) {
        return (x / y, x % y)
    }
    
}

struct natLibTR {
    internal var books: [Book] = []
}

protocol Book {
    var name: String {get set}
    var info: String {get set}
}

class HistoricalBook: Book {
    var name: String = "History of Russia"
    var info: String = "something about Russia"
}
class ScienceBook: Book {
    var name: String = "Science 7th grade"
    var info: String = "Om's law"
}
class SportBook: Book {
    var name: String = "Real Madrid football"
    var info: String = "Ronaldo is the GOAT"
}

protocol Magazine {
    var name: String {get set}
    var pictureInfo: String {get set}
}
class SportMagazine: Magazine {
    var name: String = "Black Mamba"
    var pictureInfo: String = "Kobe and Shaq"
}
class BusinessMagazine: Magazine {
    var name: String = "Forbes"
    var pictureInfo: String = "Top 10 the richest people of Russia"
}


