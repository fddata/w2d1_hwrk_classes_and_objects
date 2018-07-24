
#Model a Library as a class.

class Library

  attr_accessor :books

  def initialize()
    @books = []
  end

#
def add_book(book)
  @books.push(book)
end

def find_by_title(title)
@books.select {|book| book[:title] == title }[0]
#add [0] to return the hash, rather than the array of 1 hash. can also use the for loop

  # for book in @books
  #   if book[:title] == title
  #     return book
  #   end
  # end
end

def get_rental_details(title)
  #uses previous function and returns only rental details.
  return find_by_title(title)[:rental_details]
  #can also use a for loop
  # for book in @books
  #   if book[:title] == title
  #     return book[:rental_details]
  #   end
  # end
end

def add_book_by_title(name_of_book)
  book = {title: name_of_book,
    rental_details: {
      student_name: "",
      date: "",
      }}

      add_book(book)

    end

def change_rental_details(name_of_book, student_name, new_date)
  book = find_by_title(name_of_book)
  book[:rental_details][:student_name] = student_name
  book[:rental_details][:date] = new_date
end


end
