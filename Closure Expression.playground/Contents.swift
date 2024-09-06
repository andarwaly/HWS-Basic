import Cocoa

var greeting = "Hello, playground"

func greetUser() -> String{
    print("Hi there!")
    return "Hello"
}

greetUser()

var greetCopy = greetUser // ini assign functionnya ke variablenya
var greetCopy1 = greetUser() // ini assign returnnya ke variablenya
greetCopy()

// Nah jadi, kita bisa langsung assign function ke variable atau konstan kayak gini, disebut closure
let sayHello = {
    print("Hi there!")
}

sayHello()

// kalo closurenya mau menerima parameter
let sayHi = { (name: String) -> String in // in, sebagai pemisah antara parameter dengan function body
    "Hi \(name)!"
}

// bisa juga kita bikin dengan type annotation
let sayOi: () -> Void = sayHello // ini kalo gaada parameter & return value


// kalau accept parameter
func getUserData(for id: Int) -> String {
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return "Anonymous"
    }
}

let data: (Int) -> String = getUserData
let user = data(1989)
print(user)



// bikin custom sorting
let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]

//let captainFirstTeam = team.sorted(by: { (name1: String, name2: String) -> Bool in
//    if name1 == "Suzanne" {
//        return true
//    } else if name2 == "Suzanne" {
//        return false
//    }
//
//    return name1 < name2
//})

// sama kayak ini
//let captainFirstTeam = team.sorted { name1, name2 in
//    if name1 == "Suzanne" {
//        return true
//    } else if name2 == "Suzanne" {
//        return false
//    }
//
//    return name1 < name2
//}

// bisa dibikin lebih pendek lagi jadi kayak gini
//Swift can automatically provide parameter names for us, using shorthand syntax. 
//With this syntax we don’t even write name1, name2 in any more, and instead rely on specially named values
//that Swift provides for us: $0 and $1, for the first and second strings respectively.

let captainFirstTeam = team.sorted {
    if $0 == "Suzanne" {
        return true
    } else if $1 == "Suzanne" {
        return false
    }

    return $0 < $1
}
print(captainFirstTeam)


// Accept function as param
func makeArray(size: Int, using generator: () -> Int) -> [Int] { //pake function namanya generator
    var numbers = [Int]() // buat return array numbernya

    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }

    return numbers
}

let testing = makeArray(size: 30) {
    Int.random(in: 1...20)
}
print(testing.sorted(){$0>$1}) //reverse sort


func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) {
    print("About to start first work")
    first()
    print("About to start second work")
    second()
    print("About to start third work")
    third()
    print("Done!")
}

doImportantWork(first: <#T##() -> Void#>, second: <#T##() -> Void#>, third: <#T##() -> Void#>)
