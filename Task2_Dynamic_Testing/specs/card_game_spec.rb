require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../card_game')
require_relative('../card')

class CardGameTest < MiniTest::Test

  def setup

    @card1 = Card.new("hearts", 4)
    @card2 = Card.new("clubs", 1)
    @card3 = Card.new("spades", 10)
    @cards = [@card1, @card2, @card3]
    @cardgame1 = CardGame.new(@cards)

  end

  def test_can_get_cards_total_value
    assert_equal("You have a total of 15", @cardgame1.cards_total)
  end

  def test_can_check_for_ace__true
    assert_equal(true, @cardgame1.check_for_ace(@card2))
  end

  def test_can_check_for_ace__false
    assert_equal(false, @cardgame1.check_for_ace(@card1))
  end
  
  def test_highest_card__card1_is_greater
    assert_equal(@card1, @cardgame1.highest_card(@card1, @card2))
  end

  def test_highest_card__card1_is_not_greater
    assert_equal(@card3, @cardgame1.highest_card(@card1, @card3))
  end

end
