require 'test_helper'

require_relative '../lib/ugly_trivia/game'

class GameTest < MiniTest::Unit::TestCase
  def setup
    @game = UglyTrivia::Game.new
  end

  def test_initialize
    assert_equal 50, @game.pop_questions.size

    assert_equal "Pop Question 49", @game.pop_questions.last
    assert_equal "Science Question 49", @game.science_questions.last
    assert_equal "Sports Question 49", @game.sports_questions.last
    assert_equal "Rock Question 49", @game.rock_questions.last
  end

  def test_add
    assert @game.add 'Chet'
    assert_equal ["Chet"], @game.players
    assert_equal 1, @game.players.length
    assert_equal 0, @game.places[1]
    assert_equal 0, @game.purses[1]
    assert !@game.in_penalty_box[1]
    assert_equal Array, @game.places.class
  end

  def test_is_playable?
    @game.add 'Chet'
    assert !@game.is_playable?
    @game.add 'Kuro'
    assert @game.is_playable?
  end

  def test_move_places
    @game.add 'Kita'
    @game.add 'Kuro'
    @game.move_places(11)
    assert_equal 11, @game.places[@game.current_player_index]
  end

  def test_move_places_when_greater_than_12
    @game.add 'Kita'
    @game.add 'Kuro'
    @game.move_places(12)
    assert_equal 0, @game.places[@game.current_player_index]
  end

end
