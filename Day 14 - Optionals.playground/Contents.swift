import Cocoa

var username: String? = nil // ini data optional, beda sama string kosong. Kita pake tanda tanya untuk ngedefine kalo sebuah data bisa kosong.

// untuk cek apakah optional itu punya data apa nggak, kita perlu unwrap data optional tersebut.
// ibaratkan seperti box, unwrap disini kita bakal ngecek apakah sebuah data optional (box) ada isinya apa nggak

// Cara pertama -> If let statement
if let unwrappedName = username {
    print("We got a user: \(unwrappedName)")
} else {
    print("The optional was empty.")
}

// if let bakal run bodynya apabila optional punya value.

// bisa juga kita tulis dengan teknik shadowing
if let username = username { // const username disini, hanya valid untuk di dalam body if let statement. (temporary)
    print("We got a user: \(username)")
} else {
    print("Username is still empty")
}


// Cara kedua -> guard let (harus di dalam function, method or closure
func printSquare(of number: Int?) {
    guard let number = number else {
        print("Missing input")
        // 1: We *must* exit the function here
        return // wajib ada return untuk exit dari function.
    }
    // 2: `number` is still available outside of `guard`
    print("\(number) x \(number) is \(number * number)")
}

// If let vs guard let
var myVar: Int? = 3

if let unwrapped = myVar {
    print("Run if myVar has a value inside")
}

func unwrap(){
    guard let unwrapped = myVar else {
        print("Run if myVar doesn't have a value inside")
        return
    }
    
}

// Cara ketiga -> nil coalescing operator (??)

// it lets us unwrap an optional and provide a default value if the optional was empty.
let captains = [
    "Enterprise": "Picard",
    "Voyager": "Janeway",
    "Defiant": "Sisko"
]

let new = captains["Serenity"] ?? "N/A"

// using it on a struct
struct Book {
    let title: String
    let author: String?
}

let book1 = Book(title: "Beowulf", author: nil)
let author1 = book1.author ?? "Anonymous"
print(author)


// It’s even useful if you create an integer from a string, where you actually get back an optional Int? because the conversion might have failed – you might have provided an invalid integer, such as “Hello”.

let input = ""
let number = Int(input) ?? 0
print(number)


// Optional Chaining
let names = ["Arya", "Bran", "Robb", "Sansa"]

let chosen = names.randomElement()?.uppercased() ?? "No one"
print("Next in line: \(chosen)")

// example optional chaining pada struct (refer ke line 63)

var book: Book? = nil
let author = book?.author?.first?.uppercased() ?? "A"
print(author)
//  it will reads as: “if we have a book, and the book has an author, and the author has a first letter, then uppercase it and send it back, otherwise send back A”.


// handling function failure in optionals
enum UserError: Error {
    case badID, networkFailed
}

func getUser(id: Int) throws -> String {
    throw UserError.networkFailed
}

if let user = try? getUser(id: 23) {
    print("User: \(user)")
}
