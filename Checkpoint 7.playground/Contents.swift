import Cocoa

/*
 The Challenges:
 make a class hierarchy for animals, starting with Animal at the top, then Dog and Cat as subclasses, then Corgi and Poodle as subclasses of Dog, and Persian and Lion as subclasses of Cat.
 */


class Animal {
    //property
    let legCount: Int

    //method
    func speak(){}
    
    //initializer
    init(legCount: Int) {
        self.legCount = legCount
    }
}
class Dog: Animal {
    override func speak() {
        print("woof woof")
    }
}
final class Corgi: Dog{
    override func speak() {
        print("Arf arf")
    }
}
final class Poodle: Dog{
    override func speak() {
        print("Yip yip")
    }
}
class Cat: Animal {
    let isTame: Bool
    override func speak() {
        print("meow meow")
    }
    init(legCount: Int, isTame: Bool) {
        self.isTame = isTame
        super.init(legCount: legCount)
    }
}
final class Persian: Cat{
    override func speak() {
        print("Purr")
    }
}
final class Lion: Cat{
    override func speak() {
        print("Roar")
    }
}


let Albert = Dog(legCount: 4)
Albert.speak()

let Kuro = Cat(legCount: 4, isTame: true)
Kuro.speak()

let Simba = Lion(legCount: 4, isTame: false)
Simba.speak()


