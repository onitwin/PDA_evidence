### Testing task 1:

# Carry out static testing on the code below.
# Comment on any errors that you see below.
```ruby

class CardGame


  def checkforAce(card) #should be self method
    if card.value = 1  #shold be '==' to compare values
      return true
    else
      return false
    end
  end

  dif highest_card(card1 card2) #no comma to seperate values? 'dif' should be 'def' and self method
  if card1.value > card2.value #this should be indented
    return card #no 'card' object to reference (should be card1)
  else
    return card2
  end #misaligned end statement- this 'end' should be indented to end the with the corrected 'if' statement
end #misaligned end statement- this 'end' should be indented to match the (incorrectly labeled) function 'highest_card'
end #this end statement is placed incorrectly in the class body and will end the class- this should be placed at the bottom of the class with no indentations

def self.cards_total(cards) #whole function needs indented into class
  total #total has no declared values- for this functio should be 0
  for card in cards
    total += card.value #'value' property is not defined
    return "You have a total of" + total #this return is within the loop and will return the value on each pass rather than one time at the end
  end
end
```
