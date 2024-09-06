import Cocoa

class Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var newGame = Game()
newGame.score += 10

// Class can inherit from other classess

class Employee {
    let hours: Int // Property
    func printSummary() {
        print("I work \(hours) hours a day.")
    }

    init(hours: Int) {
        self.hours = hours
    }
}

class Developer: Employee {
    //Method, bisa manggil property dari parentnya
    func work() {
        print("I'm writing code for \(hours) hours.")
    }
}

class Manager: Employee {
    func work() {
        print("I'm going to meetings for \(hours) hours.")
    }
}

// Class bisa sharing property & juga method
// Sharing property
let robert = Developer(hours: 8)
let joseph = Manager(hours: 10)
robert.work()
joseph.work()
// Sharing method
let novall = Developer(hours: 8)
novall.printSummary()


// Building init
class Vehicle {
    let isElectric: Bool

    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Car: Vehicle {
    let isConvertible: Bool

    init(isElectric: Bool, isConvertible: Bool) {
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric) // untuk ditaruh di child untuk manggil init dari parent
    }
}

let teslaX = Car(isElectric: true, isConvertible: false)
