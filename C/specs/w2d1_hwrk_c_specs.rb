require 'minitest/autorun'
require 'minitest/rg'
require_relative '../w2d1_hwrk_c.rb'

class LibraryTest < MiniTest::Test

  def setup

    #Each book should be a hash with a title, which is a string, and rental details, which is another hash with a student name and due date.

    @books1 =Library.new(
      [
      {
        title: "lord_of_the_rings",
        rental_details: {
          student_name: "Jeff",
          date: "01/12/18"
        }
      },
      {
        title: "the_two_towers",
        rental_details: {
          student_name: "simon",
          date: "11/12/18"
        }
      }
    ])

  end


#Create a getter for the books
 def test_get_books
   result = @books1.books
   assert_equal(2, result.length)
 end

#Create a method that takes in a book title and returns all of the information about that book.
 def test_get_info

   result = @books1.get_info("the_two_towers")
   assert_equal(2, result.length)
 end

#   result = @books1.get_info("the_two_towers")
#   assert_equal(4, result.size)
# end



end
