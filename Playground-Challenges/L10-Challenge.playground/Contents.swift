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
    
    // Create function to searchByTitle
    func searchByTitle(_ title:String) -> String {
        // Search in catalogue
        // - If book exists return "Available"
        // - If book does not exists return "Checked out by name"
        var bookExists = false
        for kvp in catalogue {
            if kvp.value.title == title {
                // The title exists therefore check if has been checked out
                bookExists = true
                if let person = checkedOutBooks[kvp.key] {
                    // If return something, unwrap and return the message
                    // of who has checked out the book
                    return "Checked out by \(person.name!)"
                } else {
                    // If it returns nil, no one has checked out this book
                    return "Available"
                }
            }
        }
        if bookExists == false {
            // The search in the catalogue for this title returned false
            return "Not in catalogue"
        }
    }
    
    // Create function to checkOut a book
    func checkOut (_ bookId:String, _ person:Person) -> String {
        if let _ = catalogue[bookId] {
            // Book exists in the catalogue
            if let _ = checkedOutBooks[bookId] {
                // Book has checked out
                return "Error: Book already checked out"
            } else {
                // Book has not being checked out
                checkedOutBooks[bookId] = person
                return "Succesfully checked out"
            }
        } else {
            // Book does not exist in the catalogue
            return "Book doesn't exist"
        }
    }
}
