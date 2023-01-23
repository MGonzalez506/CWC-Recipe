import UIKit

// Create a class Person with a property
// called name
class Person {
    var name:String?
    
    init(_ fullName:String) {
        name = fullName
    }
}

// Create a class Book with two properties
// Book Title and Book Author
class Book {
    var title:String?
    var author:String?
    
    init(_ bookTitle:String, _ bookAuthor:String) {
        title = bookTitle
        author = bookAuthor
    }
}

// Create Library class
// In order to hold the properties and functions

class Library {
    
    // Create a dictionary called catalogue with all the kvp
    // of the books
    var catalogue = ["ORW":Book("1984", "George Orwell"),
                     "RAY":Book("Fahrenheit 451", "Ray Bradbury")]
    
    // Create a dictionary called checkedOutBooks to hold
    // who has checked out the books
    var checkedOutBooks = [String:Person]()
}
