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
