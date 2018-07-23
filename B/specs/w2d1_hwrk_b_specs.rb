require 'minitest/autorun'
require 'minitest/rg'
require_relative '../w2d1_hwrk_b.rb'

class TestTeam < MiniTest::Test

  def setup
    @team1 = Team.new("The Magnificent G7", ["John Doe", "Jane Doe", "Team Mascot"], "Ally",0)
  end


  # For each property in the class make a getter method than can return them.

  def test_get_name
    result = @team1.name
    assert_equal("The Magnificent G7", result)
  end

  def test_get_players
    result = @team1.players
    assert_equal(["John Doe", "Jane Doe", "Team Mascot"], result)
  end

  def test_get_coach
    result = @team1.coach
    assert_equal("Ally", result)
  end

  # Create a setter method to allow the coach's name to be updated.

  def test_set_coach
    @team1.coach = "Upul"
    assert_equal("Upul", @team1.coach)
  end

  # Create a method that adds a new player to the players array.

  def test_add_player
    @team1.add_player("Some Guy")
    result = @team1.players.length
    assert_equal(4, result)

  end

  # Add a method that takes in a string of a player's name and checks to see if they are in the players array.

  def test_name_check__true
    result = @team1.name_check("Jane Doe")
    assert_equal(true, result)
  end

  def test_name_check__false
    result = @team1.name_check("Mr Big")
    assert_equal(false, result)

  end


  # Create a method that takes in whether the team has won or lost and updates the points property for a win.
  #
  def test_update_score__win
    @team1.update_score("win")
    assert_equal(3, @team1.points)
  end

  def test_update_score__lose
    @team1.update_score("lose")
    assert_equal(0, @team1.points)
  end


end
