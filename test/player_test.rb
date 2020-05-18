require 'minitest/autorun'
require 'minitest/pride'
require './lib/player.rb'

class PlayerTest < Minitest::Test
  def setup
    @player = Player.new({
      name: "Luka Modric",
      position: "midfielder"
      })
  end

  def test_it_exists
    assert_instance_of Player, @player
    assert_equal "Luka Modric", @player.name
    assert_equal "midfielder", @player.position
  end
end
