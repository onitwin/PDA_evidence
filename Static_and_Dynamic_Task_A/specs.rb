require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("card_game.rb")
require_relative("card.rb")
class TestCardGame < MiniTest::Test

  def setup
    @ace_of_spades=Card.new('spades',1)
    @jack_of_hearts=Card.new('hearts',10)
    @eight_of_clubs=Card.new('clubs',8)
    @seven_of_clubs=Card.new('clubs',7)
    @four_of_diamonds=Card.new('diamonds',4)
    @all_cards=[@ace_of_spades,@jack_of_hearts,@eight_of_clubs,@seven_of_clubs,@four_of_diamonds]

  end



  def test_for_check_for_ace_true()
    assert_equal(true,CardGame.checkforAce(@ace_of_spades))
  end


  def test_for_check_for_ace_false()
    assert_equal(false,CardGame.checkforAce(@jack_of_hearts))
  end

  def test_for_highest_card_pass()
    assert_equal(@jack_of_hearts,CardGame.highest_card(@jack_of_hearts,@seven_of_clubs))
  end

  def test_for_cards_total()
    assert_equal("You have a total of 30",CardGame.cards_total(@all_cards))
  end





end
