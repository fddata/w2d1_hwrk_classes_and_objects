
#Model a Library as a class.

class Library

  attr_accessor :books

  def initialize(books)
    @books = books
  end

  def get_info(name)
    @books.select {|book| book[:title] == name }[0]
  end





end


# Create a method that takes in a book title and returns only the rental details for that book.
# Create a method that takes in a book title and adds it to our book list (add a new hash for the book with the student name and date being left as empty strings)
# Create a method that changes the rental details of a book by taking in the title of the book, the student renting it and the date it's due to be returned.
