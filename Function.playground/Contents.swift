import Cocoa

var greeting = "Hello, playground"

func fizzBuzz (multipleA: Int, multipleB: Int, rangeStart: Int, rangeEnd: Int){
    for i in rangeStart...rangeEnd{
        if i.isMultiple(of: multipleA) && i.isMultiple(of: multipleB){
            print("FizzBuzz")
        } else if i.isMultiple(of: multipleA){
            print("Fizz")
        } else if i.isMultiple(of: multipleB){
            print("Buzz")
        } else {
            print("\(i)")
        }
    }
}

fizzBuzz(multipleA: 5, multipleB: 7, rangeStart: 2, rangeEnd: 200)


func square(numbers: [Int]) {
    for number in numbers {
        let squared = number * number
        print("\(number) squared is \(squared).")
    }
}
square(numbers: [2, 3, 4])

func buyCar(price: Int) {
    switch price {
    case 0...20_000:
        print("This seems cheap.")
    case 20_001...50_000:
        print("This seems like a reasonable car.")
    case 50_001...100_000:
        print("This had better be a good car.")
    default:
        print("No Money")
    }
}

buyCar(price: 100_000)

func rollDice() -> String {
    let number = Int.random(in: 1...6)
    return "You've rolled \(number)"
}
 rollDice()

func isAnagram(First: String, Second: String) -> Bool{
    return First.sorted() == Second.sorted() // kalo cuma ada satu, bisa ditulis tanpa return
}
isAnagram(First: "abjad", Second: "bajad")

func pythagoras(a: Double, b: Double) -> Double{
    sqrt(a*a+b*b)
}

pythagoras(a: 3, b: 4)

func getUser() -> (firstName: String, lastName: String) { //ini nge return tuples
    (firstName: "Taylor", lastName: "Swift")
}

let user = getUser()
let firstName = user.firstName
let lastName = user.lastName

print("Name: \(firstName) \(lastName)")

// bisa disingkat jadi ini, untuk reassign value properti tuples ke individual constant
let (firstNamee, lastNamee) = getUser()


// setup default value buat parameter
func userData(name: String, age: Int, country: String = "Indonesia") -> (name: String, age: Int, country: String) {
    (name: name, age: age, country: country)
}

// ini bisa ngebantu kita biar nggak ngetik ulang terus2an parameternya & tetep customizeable
var simple = userData(name: "Imelda", age: 20)
print(simple.country)


