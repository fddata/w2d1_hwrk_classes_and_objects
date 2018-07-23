require 'minitest/autorun'
require 'minitest/rg'
require_relative '../w2d1_hwrk.rb'

class TestStudent < MiniTest::Test

  def setup
    @student1 = Student.new("Fraser", "G7")

  end

#Getter tests - testing attr_accessor has initialised correctly

def test_get_name
    result = @student1.name
    assert_equal("Fraser", result)
end



end
