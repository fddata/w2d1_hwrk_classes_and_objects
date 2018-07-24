require 'minitest/autorun'
require 'minitest/rg'
require_relative '../w2d1_hwrk_c.rb'

class TestLibrary < MiniTest::Test

  def setup

    #Each book should be a hash with a title, which is a string, and rental details, which is another hash with a student name and due date.

    @book =
        {
          title: "lord_of_the_rings",
          rental_details: {
            student_name: "Jeff",
            date: "01/12/18"
          }
        }
    #Then we create a new library (that is empty as defined in our initialze function) and we add it a book, using add_book method we have written

   @library = Library.new()
   @library.add_book(@book)

   # Creating a second blank book for use later
   @book2 ={
     title: "lord_of_the_flies",
     rental_details: {
       student_name: "",
       date: ""
     }
   }

    end


#writing a test for our add_book method
def test_add_book
  @library.add_book(@book2)
  result = @library.books
  assert_equal(2, result.size)
end

#Create a method that takes in a book title and returns all of the information about that book. We want to return the complete @book hash.
def test_get_book_by_title
  result = @library.find_by_title("lord_of_the_rings")
  assert_equal(@book, result)

end



# Create a method that takes in a book title and returns only the rental details for that book.
def test_get_rental_details_by_title
  result = @library.get_rental_details("lord_of_the_rings")
  assert_equal(@book[:rental_details], result)
end


# Create a method that takes in a book title and adds it to our book list (add a new hash for the book with the student name and date being left as empty strings).  We will use @book2 as our dummy empty book, as defined in the setup.

def test_add_book_without_rental_details
  @library.add_book_by_title("lord_of_the_flies")
  actual_book = @library.find_by_title("lord_of_the_flies")
  assert_equal(@book2, actual_book)
end


  #Create a method that changes the rental details of a book by taking in the title of the book, the student renting it and the date it's due to be returned.
  def test_change_rental_details
    #first change the book using our new method
    @library.change_rental_details("lord_of_the_rings", "bob", "25/12/2018")

    #we use an earlier funtion to return the new book hash
    result = @library.find_by_title("lord_of_the_rings")

    #testing to see if our new book matches what we think we have
    expected_book = {
      title: "lord_of_the_rings",
      rental_details: {
        student_name: "bob",
        date: "25/12/2018"
      }
    }
  assert_equal(expected_book, result)

  end

end
