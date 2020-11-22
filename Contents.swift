import UIKit

// Tuples
let person = (
    firstName: "Paulo",
    lastName: "Mendes",
    age: 30,
    position: "iOS Dev"
)

print(person.firstName)

// Classes VS Structures
/* Classes and Structures have a lot in common but there are two important differences.
   Classes can inherit from other classes.
   Classes are reference types and structs are value types. If you make a copy of a struct object and change this copy, the original object won't be changed.
   On classes if you create a copy of a class object and change it, the original object will also change.
 */
struct Resolution {
    var width = 0
    var height = 0
}

class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

let someResolution = Resolution()
let someVideoMode = VideoMode()

print("The width of someVideoMode is \(someVideoMode.resolution.width)")
//Memberwise Initializers for Structure Types
let hd = Resolution(width: 1920, height: 1080)
var cinema = hd

cinema.width = 2048
print("cinema is now \(cinema.width) pixels wide") // Prints "cinema is now 2048 pixels wide"
print("hd is still \(hd.width) pixels wide") // Prints "hd is still 1920 pixels wide"

// Protocol
protocol FullyNamed {
    var fullName: String { get }
}

struct Person: FullyNamed {
    var fullName: String
}

let paulo = Person(fullName: "Paulo Sérgio da Silva Mendes")
print(paulo.fullName)

class Starship: FullyNamed {
    var prefix: String?
    var name: String
    init(name: String, prefix: String? = nil) {
        self.name = name
        self.prefix = prefix
    }
    var fullName: String {
        return (prefix != nil ? prefix! + " " : "") + name
    }
}

var ncc1701 = Starship(name: "Enterprise", prefix: "USS")

//
