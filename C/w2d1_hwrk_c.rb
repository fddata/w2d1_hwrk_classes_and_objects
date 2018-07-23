
#Model a Library as a class.

class Library

  attr_accessor :books

  def initialize(books)
    @books = books
  end

  def get_info(name)
    @books.select {|book| book[:title] == name }[0]
  end

  def get_rental_details(name)
    return get_info(name)[:rental_details]

  end

 def add_book(new_book)
   @books.push(new_book)
 end

end


# Create a method that changes the rental details of a book by taking in the title of the book, the student renting it and the date it's due to be returned.
