import Cocoa

// The Default Value from the challenge
let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]


let sorted = luckyNumbers.sorted()
let filter = sorted.filter{
    if $0.isMultiple(of: 2){
        return false
    }
    return true
}

func sortTheLuck(for numbers: [Int]){
    for number in numbers {
        print("\(number) is a lucky number")
    }
}

print("First Try")
sortTheLuck(for: filter)

for number in luckyNumbers {
    luckyNumbers
        .filter{
            if $0.isMultiple(of: 2){
                return false
            }
            return true
        }
        .sorted()
        .map{"\($0) is your lucky number"}
}
print("")
print("Second Try")

let chainLuck = luckyNumbers
    .filter{!$0.isMultiple(of: 2)}
    .sorted()
    .map{print("\($0) is your lucky number")}

print("")
print("Third Try")


let yourLuck = {(numbers:[Int]) in
    numbers
        .filter{!$0.isMultiple(of: 2)}
        .sorted()
        .map{print("\($0) is your lucky number")}
}

yourLuck(luckyNumbers)
