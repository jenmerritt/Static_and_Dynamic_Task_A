### Testing task 1:

# Carry out static testing on the code below.
# Comment on any errors that you see below.
```ruby

class CardGame

# check_for_ace would be better method name. = should be == as it is not assigning it is comparing.
  def checkforAce(card)
    if card.value = 1
      return true
    else
      return false
    end
  end

# dif should be def, and a comma is missing in parameters i.e. (card1, card2)
  dif highest_card(card1 card2)
# Indentation from next line could be fixed
  if card1.value > card2.value
# card is an undefined variable - should be card1
    return card
  else
    return card2
  end
end
# 1 too many ends, remove below
end

# indentation could be fixed
def self.cards_total(cards)
# total should be set to 0
  total
  for card in cards
    total += card.value
# total is required to be either converted to a string or included within the string, as at present total is an integer.
    return "You have a total of" + total
  end
end

# an additional end is required here to end the definition of the class
```
