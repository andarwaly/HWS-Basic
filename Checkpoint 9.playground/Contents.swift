import Cocoa

func sendRandomNumber(for numbers:[Int]?) -> Int {
    return numbers?.randomElement() ?? Int.random(in: 1...100)
}
