require 'test_helper'

require_relative '../lib/ugly_trivia/game'

class GameTest < MiniTest::Unit::TestCase

  def test_add
    game = UglyTrivia::Game.new
    assert game.add 'Chet'
    assert_equal ["Chet"], game.players
    assert_equal 1, game.how_many_players
    assert_equal 0, game.places[1]
    assert_equal 0, game.purses[1]
    assert !game.in_penalty_box[1]
  end
end
