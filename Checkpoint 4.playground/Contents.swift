import Cocoa

enum rootError: Error { // error option using switch case
    case outOfBound
}

// Looping to check if the number in range are the square root of the inputted value
func rootOf(_ of: Int = 25) throws -> Int{
    for number in 1...100{
        let power = number * number // this will do 1*1 and loop it until 100*100
        if power == of{
            return number // break the loop, if the result is equal to inputted number
        }
    }
    throw rootError.outOfBound
}

// error handling if the inputted value is out of bound
do{
    let result = try rootOf(10000)
    print(result)
} catch{
    print("Out of Bound")
}



