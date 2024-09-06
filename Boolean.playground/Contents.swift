import Cocoa

var greeting = "Hello, playground"
let score = 72

if score > 80 {
    print("Great Jobs")
} else {print("You Suck")}

// bisa juga digunain untuk string
var myName = "Dzaky"
var friendName = "Mega"

if myName > friendName {
    print("Hei! \(friendName) & \(myName)")
} else{
  print("Hei! \(myName) & \(friendName)")
}

// Make an array of 3 numbers
var numbers = [1, 2, 3]

// Add a 4th
numbers.append(4)

// If we have over 3 items
if numbers.count > 3 {
    // Remove the oldest number
    numbers.remove(at: 0)
}

// Display the result
print(numbers)

enum Weather {
    case sun, rain, wind, snow, unknown
}

let forecast = Weather.sun

switch forecast {
case .sun:
    print("It should be a nice day.")
    fallthrough
case .rain:
    print("Pack an umbrella.")
case .wind:
    print("Wear something warm")
case .snow:
    print("School is cancelled.")
case .unknown:
    print("Our forecast generator is broken!")
}

