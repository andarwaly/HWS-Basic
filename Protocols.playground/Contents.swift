import Cocoa

// Ini bakal make sure kalo kita akan menggunakan method dan property yang udah di define
protocol Vehicle {
    var name: String {get}
    var currentPassenger: Int {get set}
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

// struct bisa conform atau mengadopsi fungsi dari protocols
struct Car : Vehicle {
    var name: String
    var currentPassenger: Int
    func estimateTime(for distance: Int) -> Int {
        distance/50
    }
    func travel(distance: Int) {
        print("I'm driving \(distance)km")
    }
    func openSunroof(){
        print("It's a nice day!")
    }
}

struct Bicycle: Vehicle {
    var name: String
    var currentPassenger: Int
    func estimateTime(for distance: Int) -> Int {
        distance / 10
    }

    func travel(distance: Int) {
        print("I'm cycling \(distance)km.")
    }
}


// dibandingkan dengan memasukkan Car ke dalam vehicle, kita bisa langsung pake protocolnya
func commute(distance: Int, using vehicle: Vehicle) {
    if vehicle.estimateTime(for: distance) > 100 {
        print("That's too slow! I'll try a different vehicle.")
    } else {
        vehicle.travel(distance: distance)
    }
}

// Karena swift tau method dan properti pasti ada pada struct yang conform protocol, kita bisa menggunakannya pada array.
func getTravelEstimates(using vehicles: [Vehicle], distance: Int) {
    for vehicle in vehicles {
        let estimate = vehicle.estimateTime(for: distance)
        print("\(vehicle.name): \(estimate) hours to travel \(distance)km")
    }
}

let car = Car(name: "Tesla Model X", currentPassenger: 3)
commute(distance: 100, using: car)


let bike = Bicycle(name: "United Bike", currentPassenger: 1)
commute(distance: 50, using: bike)

getTravelEstimates(using: [car, bike], distance: 200)


// Create and use extensions
var quote = "   The truth is rarely pure and never simple   "
// Untuk melakukan trim, kita bisa menggunakan bawaan dari cocoa
let trimmed = quote.trimmingCharacters(in: .whitespacesAndNewlines) //trim spasi dan baris baru

// tapi, bentuk ini terlalu panjang secara pengetikan. kita bisa menggunakan extention untuk solve ini
extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines) // bakal bikin value baru
    }
    mutating func trim(){
        self = self.trimmed() // bakal modif string directly
    }
}
print(quote.trimmed())

// kita bisa menggunakan extention, untuk bikin custom init. Bedanya, disini kita jadi bisa menggunakan memberwise init atau logic dari struct sendiri
struct Book {
    let title: String
    let pageCount: Int
    let readingHours: Int
}
extension Book {
    init(title: String, pageCount: Int) {
        self.title = title
        self.pageCount = pageCount
        self.readingHours = pageCount / 50
    }
}

// Keduanya jadi valid apabila kita menaruh custom init pada extension
var bookA = Book(title: "Lord Of The Ring", pageCount: 50, readingHours: 1200)
var bookB = Book(title: "Sword Art Online", pageCount: 1000)
print(bookA.readingHours)
print(bookB.readingHours)
