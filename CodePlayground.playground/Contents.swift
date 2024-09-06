import Cocoa

var greeting = "Hello, playground"

var name = "Dzaky"
name = "waly"

let character = "Daphne"

var playerName = "Danny"
print(playerName)

playerName = "Roofi"
print(playerName)

playerName = "Sam"
print(playerName)

playerName = "Oliver Gunn"
print(playerName.count)

let managerName = "Michael Scott"
let dogBreed = "Samoyed"
let meaningOfLife = "How many roads must a man walk down?"

print(managerName + " " + dogBreed)

let actor = "Daniel"
let quote = "need to put \"backslash\" so swift know"

let multiline = """
use triple quotes
if u want to have
multiline strings
"""

print(playerName.count)

/*print count itu buat ngitung jumlah huruf yang ada di string*/
/*bisa juga dilakuin tanpa print*/

let nameLenght = playerName.count
print(nameLenght)
print(playerName.uppercased())

let score = 100
let reallyBig = 100_000_000 /*underscorenya dikacangin. bisa bantu buat misahin angka 0nya*/

/*kita juga bisa pake penjumlahan*/
let halvedScore = score/2

/*daripada pake constant, kita bisa ngeset nilainya kalau misal berubah2 dengan var*/
var counter = 100
counter = counter + 5
/*or in short, bisa kita tulis dengan compound assignment operator*/
counter += 5

/*seperti string, int juga punya properti tersendiri, misal*/
print(counter.isMultiple(of: 5)) /*buat ngecek true or false*/
/*bisa juga langsung pake angkanya*/
print(120.isMultiple(of: 3))

let a = 1.0
let b = 2.0
let c = a + b
print(c)

let whole = 1
let float = 2.0
let mix = whole + Int(float) /*cara untuk menggabungkan float dengan int*/
print(mix)

var gameOver = false
print(gameOver)
gameOver.toggle()
print(gameOver)

/*Checkpoint 01*/
let tempCelcius = 27
let tempFahrenheit = (tempCelcius*9/5)+32
var tempToday = "Today's temperature is \(tempCelcius)°C or \(tempFahrenheit)°F."
print(tempToday)

var powerRanger = ["Red", "Green", "Blue", "Yellow", "Black"]
let date = [27, 29, 31, 1, 5]
var temp = [27.2, 28.3, 29.4, 30.2, 31.4]

powerRanger.append("Pink")
print(powerRanger)

/*holding specialized array*/
var scores = Array<Int>()
scores.append(100)
scores.append(80)
print(scores[1])
scores.remove(at: 1)

var employee = [String: String]()
employee["Name"] = "Dzaky Waly"
employee["Position"] = "Design Trainee"

/*Fixed Item*/
var actors = Set (["Denzel Washington", "Samuel L Jackson", "Tom Cruise"])

/*Empty Item*/
var setactor = Set<String>()

// use insert instead of append
setactor.insert("Tom Cruise")

enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}
/*Bisa juga disingkat jadi*/
enum Weekdays{
  case monday, tuesday, wednesday, thursday, friday
}

var day = Weekday.monday
day = Weekday.tuesday
day = Weekday.friday

/*Bisa juga disingkat jadi*/
var days = Weekday.monday
days = .tuesday
days = .friday

/*karena pada awalnya sudah di declare menggunakan Weekday*/
