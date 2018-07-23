
### PART A
#
# For this part we want you to make a class that represents a CodeClan student.
#
# Create a class called Student that takes in a name (String) and a cohort (string - e.g "E18", "G6", etc) when an new instance is created.

class Student

attr_accessor :name, :cohort

  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end


def talk
  return "I can talk!"
end

def say_favourite_language(language)
  return "I love #{language}"
end


end
