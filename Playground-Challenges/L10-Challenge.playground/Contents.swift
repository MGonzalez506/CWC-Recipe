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
