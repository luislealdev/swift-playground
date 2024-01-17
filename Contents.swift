import Cocoa

// ------------------------------ VARIABLES AND CONSTANTS

// To create a variable
var name = "Luis"
// Change variable content
name = "Leal"


// To create a constant (It can't be changes)
let amILoyal = true
// amILoyal = false // This is sometring thank can't happen

// Let's change some variables and print them
var changedName = "Name 1"
print(changedName)
changedName = "Name 2"
print(changedName)

// ------------------------------ STRINGS (Always between "and")
let actor = "Robert Downey Jr"

// Let's write something with "" in between
let message = "Hi \"Luis\""
print(message)

// It is posible to create a multiline string
let movie = """
Hi
Im a
Multiline ✨
"""

print(movie)

// Lets get de lenght and send a text to uppercase
name = "luis"
var lenghtName = name.count
var upperCaseName = name.uppercased()

// Check if the string starts with a specificly string
var movieHasPrefix = movie.hasPrefix("Hi")
print(movieHasPrefix)

// ------------------------------ NUMBERS
// It can be use var or let (same as strings)
let score = 10
let bigNumber = 10000000000
// To make it easy to humans to read, it can be separed by underscores
let bigNumberToRead = 10_000_000_000

// As in JAVA you can make some easy operations
var counter = 5
counter += 5

// There are others functions like
let number = 120
print(number.isMultiple(of: 3)) // For this example is true

// ------------------------------ DECIMAL NUMBERS
//In swift they are called floating point numbers
let floatingNumber = 0.1 + 0.2
print(floatingNumber) // Result: 0.30000000000000004 (this is a problem)

// Let's see another example
let a = 1
let b = 2.0

// To create a integer
var c = a + Int(b)
print(c)

// To create a double
var d = Double(a) + b
print(d)


// ------------------------------ BOOLEANS
let fileName = "paris.jpg"
var respBoolean = fileName.hasSuffix(fileName)
print(respBoolean)
// It can be changed the value of a boolean with a toggle
respBoolean.toggle()
print(respBoolean)

// ------------------------------ CONCATENATE
let people = "Haters"
let action = "hate"
let lyric = people + " gonna " + action
print(lyric)

let concatenateName = "Taylor"
let age = 26
let concatenateMessage = "Hello, my name is \(concatenateName) and I'm \(age) years old."
print(concatenateMessage)

print("5 x 5 is \(5 * 5)")


// EXERCISE #1
let celciusTemperature = 35
var fahrenheit = ((celciusTemperature*9)/5)+32
print("""
Celcius: \(celciusTemperature)
Fahrenheit: \(fahrenheit)
""")

// ------------------------------ ARRAYS
var beatles = ["John", "Paul", "George", "Ringo"]
let numbers = [4, 8, 15, 16, 23, 42]
var temperatures = [25.3, 28.2, 26.4]

print(beatles[0])
print(numbers[1])
print(temperatures[2])

// Add a new element to an array
beatles.append("Adrian")

let firstBeatle = beatles[0]
let firstNumber = numbers[0]
let notAllowed = firstBeatle + String(firstNumber)

// Initialize empty array
var scores = Array<Int>()

scores.append(100)
scores.append(80)
scores.append(85)
print(scores[1])

// Other functions
var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)

characters.remove(at: 2)
print(characters.count)

characters.removeAll()
print(characters.count)

let bondMovies = ["Casino Royale", "Spectre", "No Time To Die"]
print(bondMovies.contains("Frozen"))

let cities = ["London", "Tokyo", "Rome", "Budapest"]
print(cities.sorted())

let presidents = ["Bush", "Obama", "Trump", "Biden"]
let reversedPresidents = presidents.reversed()
print(reversedPresidents)


// DICTIONARES (Like JSON)
let employee2 = [
    "name": "Taylor Swift",
    "job": "Singer",
    "location": "Nashville"
]

print(employee2["name", default: "Unknown"])
print(employee2["job",default: "Unknown"])
print(employee2["location",default: "Unknown"])

var heights = [String: Int]()
heights["Yao Ming"] = 229
heights["Shaquille O'Neal"] = 216
heights["LeBron James"] = 206


var peopleSet = Set<String>()

peopleSet.insert("Denzel Washington")
peopleSet.insert("Tom Cruise")
peopleSet.insert("Nicolas Cage")
peopleSet.insert("Samuel L Jackson")


// ENUM (Like in TS)

enum Weekday {
    case monday, tuesday, wednesday, thursday, friday
}

var day = Weekday.monday
day = .tuesday
day = .friday

// The declaration of type in line
let surname: String = "Lasso"
var surnameScore: Int = 0

var user: [String: String] = ["id": "@twostraws"]

enum UIStyle {
    case light, dark, system
}

var style:UIStyle = UIStyle.light


// EXERCISE 2
var stringsArray = [String]()
stringsArray.append("Luis")
stringsArray.append("Rubén")
stringsArray.append("Luis")
print("Number of items: \(stringsArray.count)")
print("Number of unique items: \(stringsArray.count-Set(stringsArray).count)")


// CONDITIONS
let conditionScore = 85

if conditionScore > 80 {
    print("Great job!")
}

// CASES

enum Weather {
    case sun, rain, wind, snow, unknown
}

let forecast = Weather.sun

switch forecast {
case .sun:
    print("It should be a nice day.")
case .rain:
    print("Pack an umbrella.")
case .wind:
    print("Wear something warm")
case .snow:
    print("School is cancelled.")
case .unknown:
    print("Our forecast generator is broken!")
}


let dayNumber = 5
print("My true love gave to me…")

switch dayNumber {
case 5:
    print("5 golden rings")
    fallthrough
case 4:
    print("4 calling birds")
    fallthrough
case 3:
    print("3 French hens")
    fallthrough
case 2:
    print("2 turtle doves")
    fallthrough
default:
    print("A partridge in a pear tree")
}

// Like in Js we can use another type of conditionals like

let conditionalAge = 18
let canVote = conditionalAge >= 18 ? "Yes" : "No"
print(canVote)

let names = ["Jayne", "Kaylee", "Mal"]
let crewCount = names.isEmpty ? "No one" : "\(names.count) people"
print(crewCount)

enum Theme {
    case light, dark
}

let theme = Theme.dark

let background = theme == .dark ? "black" : "white"
print(background)


// LOOPS
let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

for os in platforms {
    print("Swift works great on \(os).")
}

for i in 1...12 {
    print("5 x \(i) is \(5 * i)")
}

var countdown = 10

while countdown > 0 {
    print("\(countdown)…")
    countdown -= 1
}

print("Blast off!")

let filenames = ["me.jpg", "work.txt", "sophie.jpg", "logo.psd"]

for filename in filenames {
    if filename.hasSuffix(".jpg") == false {
        continue
    }

    print("Found picture: \(filename)")
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


// EXERCISE 3
for i in 1...100{
    if(i.isMultiple(of: 3) && i.isMultiple(of: 5)){
        print("FizzBuzz")
    } else if i.isMultiple(of: 3){
        print("Fizz")
    }else if i.isMultiple(of: 5){
        print("Buzz")
    }else{
        print(i)
    }
}


// FUNCTION AND RETURNS ERRORS

enum PasswordError: Error {
    case short, obvious
}

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


let string = "12345"

do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch {
    print("There was an error.")
}

enum squareNumberError: Error {
    case outOfBounds, noRoot
}

func square(number: Int) throws -> Int? {
    if number < 1 || number > 10_000 {
        throw squareNumberError.outOfBounds
    }

    var square: Int?

    for i in 1...number {
        if i * i == number {
            square = i
            break  // Salir del bucle cuando se encuentra la raíz cuadrada
        }
    }

    if square == nil {
        throw squareNumberError.noRoot
    }

    return square
}

do {
    let result = try square(number: 26)
    if let squareRoot = result {
        print("La raíz cuadrada es: \(squareRoot)")
    } else {
        print("No se encontró una raíz cuadrada entera.")
    }
} catch squareNumberError.outOfBounds {
    print("Error: El número está fuera de los límites permitidos.")
} catch squareNumberError.noRoot {
    print("Error: No se encontró una raíz cuadrada entera.")
} catch {
    print("Otro error desconocido.")
}


func makeArray(size: Int, using generator:()->Int) -> [Int]{
    var numbers = [Int]()
    
    for _ in 0..<size{
        let newNumber = generator()
        numbers.append(newNumber)
    }
    
    return numbers
}

func generateNumber()->Int{
    Int.random(in: 1...20)
}

let newRolls = makeArray(size: 50,using:generateNumber )

print(newRolls)


// EXERCISE 5
let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]
let oddNumbers = luckyNumbers.filter{(num) in return num % 2 != 0}
let ascendingNumbers = oddNumbers.sorted { (num1, num2) in
    return num1 < num2
}

print(ascendingNumbers)
for number in ascendingNumbers {
    print("\(number) is a lucky number")
}
