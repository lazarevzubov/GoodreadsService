# GoodreadsService

**A simple wrapper around the [Goodreads](https://goodreads.com) public [API](https://goodreads.com/api) written in pure Swift.**

This is a very early version consisting of only a couple of features.

## Setting Up

GoodreadsService is a Swift Package and can be added to a project by the help of the Swift Package Manager using the git link https://github.com/lazarevzubov/GoodreadsService.git 

## Usage

### Initializing Entry Point

`GoodreadsService` class is the one. It's created using only your own developer API key:

```
let key = "YOUR_DEVELOPER_KEY"
let service = GoodreadsService(key: key)
```

### Books

Books are represented by the `Book` type values. They consist of:
* `id` – The string representing the Goodreads ID of the book.
* `authors` – The string array of author full names. 
* `title` – The book title.
* `imageURL` – The `URL` of the book cover in small resolution or `nil` if no cover found.
* `similarBookIDs` – The string array of similar (recommended) books IDs.

### Searching Books

Books can be queried by a book title, an author name, or any part of either.

```
let query = "Harry Potter"
service.searchBooks(query) { bookIDs in
    // ...
}
```

The completion argument value returned is an array of book ID strings. If nothing is found or an error has occurred, the empty array is passed.

### Getting Book Info

Book info can be retrieved using IDs returned by the search books query.

```
let bookID = "3"
service.getBook(by: bookID) { book in
    // ...
}
```

The completion argument value returned is a book with the specified ID. If no book with the ID found or an error has occurred, `nil` is passed. 

## For Contributors

[Code style guidelines](https://github.com/lazarevzubov/Ultimate-Swift-Code-Style-Guidelines) shall be kept in mind.
