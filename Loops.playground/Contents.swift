import Cocoa

var greeting = "Hello, playground"
let names = ["Sterling", "Cyril", "Lana", "Ray", "Pam"]

for name in names {
    print("\(name) is a secret agent!")
}
print(names[1...])

for beatle in ["John", "Paul", "Ringo"] {
    print("\(beatle) was in the Beatles")
}
var numbers = [1, 2, 3, 4, 5, 6]
for number in numbers {
    if number.isMultiple(of: 2) {
        print(number)
    }
}

var roll = 0

while roll != 20 {
    roll = Int.random(in: 1...20)
    print("I rolled \(roll)")
}

let number1 = 4
let number2 = 14
var multiples = [Int]()

for i in 1...100_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
        multiples.append(i)

        if multiples.count == 10 {
            break
        }
    }
}

print(multiples)
