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


end
