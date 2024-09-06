import Cocoa

var greeting = "Hello, playground"

enum GearStage {
    case N, first, second, third, fourth, fifth, R
}

enum CarModel {
    case tesla, honda, alphard
    
    var numberOfSeats: Int {
        switch self {
        case .tesla:
            return 5
        case .honda:
            return 4
        case .alphard:
            return 7
        }
    }
}


struct Car {
    var model: CarModel{
        didSet{
            print("This car is able to hold upto \(numberOfSeats) person(s)")
        }
    }
    var numberOfSeats: Int
    var currentGear: GearStage
    
    init(model: CarModel) {
        self.model = model
        self.numberOfSeats = model.numberOfSeats
        self.currentGear = .N // set default gear ke netral
    }
    
    mutating func changeGear (to newGear: GearStage) {
        self.currentGear = newGear // assign gear yang sedang running, ke gear baru
        
        switch newGear {
        case .N:
            print("We're ready to go")
        case .first:
            for speed in 2...5 {
                print("We're currently driving at \(speed) km/h")
            }
        case .second:
            for speed in 6...10{
                print("We're currently driving at \(speed) km/h")
            }
        case .third:
            for speed in 6...10{
                print("We're currently driving at \(speed) km/h")
            }
        case .fourth:
            for speed in 6...10{
                print("We're currently driving at \(speed) km/h")
            }
        case .fifth:
            for speed in 6...10{
                print("We're currently driving at \(speed) km/h")
            }
        case .R:
            print("We're going backwards...")
        }
    
    }
}

var myCar = Car(model: .tesla)
print(myCar.currentGear)
print(myCar.model)
myCar.changeGear(to: .second)

