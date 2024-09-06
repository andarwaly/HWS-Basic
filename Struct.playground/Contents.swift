import Cocoa

struct Employee {
    let name: String
    let vacationAllocated = 14
    var vacationTaken = 0
    var vacationBalance: Int{
        vacationAllocated - vacationTaken
    }
}

var dzaky = Employee(name: "Dzaky")
dzaky.vacationTaken += 4
print(dzaky.vacationBalance)
dzaky.vacationTaken = 0
print(dzaky.vacationBalance)

struct Rectangle {
    var width: Double
    var height: Double
    
    var area: Double {
        get {
            return width * height
        }
        set(newArea) {
            height = newArea / width
            print("Changes the height to: \(height)")
        }
    }
}

var rect = Rectangle(width: 10, height: 5)
rect.area = 200  // This will call the `set` method, adjusting the `height` based on the new area.

