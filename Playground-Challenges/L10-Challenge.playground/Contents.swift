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
                return "Successfully checked out"
            }
        } else {
            // Book does not exist in the catalogue
            return "Book doesn't exist"
        }
    }
    
    // Create function to checkIn a book
    func checkIn(_ bookId:String) -> String {
        // Check if the bookId is in the catalogue
        var bookExists = false
        for (key, _) in catalogue {
            if key == bookId {
                // The book exists
                bookExists = true
                if let _ = checkedOutBooks[key] {
                    // The book has checked out at some point
                    checkedOutBooks.removeValue(forKey: key)
                    return "Successfully checked in"
                } else {
                    // The book has not been checked out
                    return "Error: Can't check in a book that hasn't been checked out"
                }
            }
        }
        if bookExists == false {
            // The book did not exists
            return "Book doesn's exist"
        }
    }
}

// Create instance of Library
let lib = Library()
let borrower1 = Person("Curious George")
let borrower2 = Person("Mark Twain")

print("1)")
// George searches for a book
// Expected Output in console:
// "Available"
print("Expected: Available")
let searchResult = lib.searchByTitle("1984")
print("Got:      \(searchResult) \n")


print("2)")
// George checks out the book
// Expected Output in console:
// "Successfully checked out"
print("Expected: Successfully checked out")
let borrowResult = lib.checkOut("ORW", borrower1)
print("Got:      \(borrowResult) \n")


print("3)")
// Mark searches for a book
// Expected Output in console:
// "Checked out by Curious George"
print("Expected: Checked out by Curious George")
let searchResult2 = lib.searchByTitle("1984")
print("Got:      \(searchResult2) \n")

print("4)")
// Mark tries to borrow a book that's already checked out
// Expected Output in console:
// "Error: Book already checked out"
print("Expected: Error: Book already checked out")
let borrowResult2 = lib.checkOut("ORW", borrower2)
print("Got:      \(borrowResult2) \n")



print("5)")
// A book is checked in
// Expected Output in console:
// "Error: Can't check in a book that hasn't been checked out"
print("Expected: Error: Can't check in a book that hasn't been checked out")
let checkInResult = lib.checkIn("RAY")
print("Got:      \(checkInResult) \n")


print("6)")
// George checks in his book
// Expected Output in console:
// "Successfully checked in"
print("Expected: Successfully checked in")
let checkInResult2 = lib.checkIn("ORW")
print("Got:      \(checkInResult2) \n")


print("7)")
// Mark attempts to borrow the book again
// Expected Output in console:
// "Successfully checked out"
print("Expected: Successfully checked out")
let borrowResult3 = lib.checkOut("ORW", borrower2)
print("Got:      \(borrowResult3) \n")



