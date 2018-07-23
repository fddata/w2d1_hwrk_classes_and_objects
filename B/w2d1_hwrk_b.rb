

# Part B
#
# Now we would like you to make a class that represents a sports team.
#
# Make a class to represent a Team that has the properties Team name (String), Players (array of strings) and a Coach (String).
class Team

  # Refactor the class to use attr_reader or attr_accessor instead of your own getter and setter methods.


  attr_reader :name, :players
  attr_accessor :coach, :points

  # Add a points property into your class that starts at 0.


  def initialize(name, players,coach, points)
    @name = name
    @players = players
    @coach = coach
    @points = points
  end

  def add_player(player)
    @players.push(player)
  end

  def name_check(name)
    return @players.include?(name)
  end


  def update_score(result)
    if result == "win"
      @points += 3
    end
  end


end
