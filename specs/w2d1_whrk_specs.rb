require 'minitest/autorun'
require 'minitest/rg'
require_relative '../w2d1_hwrk.rb'

class TestStudent < MiniTest::Test

  def setup
    @student1 = Student.new("Fraser", "G7")

  end


# Create a couple of Getter methods, one that returns the name property and one that returns the cohort property of the student.
#Getter tests - testing attr_accessor has initialised correctly


def test_get_name
    result = @student1.name
    assert_equal("Fraser", result)
end

def test_get_cohort
  result = @student1.cohort
    assert_equal("G7", result)
end

# Add in Setter methods to update the students name and what cohort they are in.
#Setter tests, to check that attr_accessor is functioning correctly.

def test_set_name
  @student1.name = "Douglas"
  assert_equal("Douglas", @student1.name)
end

def test_set_cohort
  @student1.cohort = "E15"
  assert_equal("E15", @student1.cohort)
end

# Create a method that gets the student to talk (eg. Returns "I can talk!).

def test_talk
  result = @student1.talk
  assert_equal("I can talk!", result)
end

# Create a method that takes in a students favourite programming language and returns it as part of a string (eg. student1.say_favourite_language("Ruby") -> "I love Ruby").

def test_fav_language
  result = @student1.say_favourite_language("Ruby")
  assert_equal("I love Ruby", result)
end



end
