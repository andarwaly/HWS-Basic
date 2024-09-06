import Cocoa

enum PasswordError: Error {
    case short, obvious
}
// pake enum buat define option dari error typenya, kita bikin dari Type Data error built in di Swift

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }

    if password == "12345" {
        throw PasswordError.obvious
    }

    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

/* If a function is able to throw errors without handling them itself, you must mark the function as throws before the return type.
 When it comes time to throw an error, we write throw followed by one of our PasswordError
 cases. This immediately exits the function, meaning that it won’t return a string.*/


let password = "aay"

// format pseudocode buat handling error, kita run dengan do
do {
    let result = try checkPassword(password)
    print("Password rating: \(result)")
}   catch PasswordError.short { // bisa di specify satu-satu gini dari enumnya
    print("Pendek bet passnya")
}   catch { // ini buat catch all errors kalo ngga termasuk tipe error enum
    print("There was an error.")
}

enum MeasureError: Error {
    case unknownItem
}

func measure(itemName: String) throws -> Double {
    switch itemName {
    case "bookcase":
        return 2.0
    case "chair":
        return 1.0
    case "child":
        return 1.3
    case "adult":
        return 1.75
    default:
        throw MeasureError.unknownItem
    }
}

do{
    let result = try measure(itemName: "bookcase")
    print(result)
} catch {
    print("unknown")
}

