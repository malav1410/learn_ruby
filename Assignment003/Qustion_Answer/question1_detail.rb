###
# Q. Why does line 26 not print out "false" when we marked taken as true by calling mark_taken_as_true on line 25?
###

###
# A. here "taken" is a local variable in both methods. It is valid in its local scope.  
###
class Book
  attr_accessor :taken    #- This will create instance variable "@taken"

  # When you call this method the "taken" variable is defined but it has not assign any value. 
  def is_available?
    if taken == false     #- At first method call,this line it will check condition like " nil == false ", which is false. 
      return true         #- So it will return false.
    else
      return false
    end
  end

  def mark_taken_as_true
    taken = false         #- This "taken" is local variable and its value is valid in its local scope,which is method mark_taken_as_true
  end                     #- It will not affect the value of other scope means value of "taken" in is _available? method
end

book = Book.new
puts book.is_available?   #- It will return false cause of " nil == false "
book.taken = false        #- Set "taken = false"
puts book.is_available?   #- now value of "taken = false" so condition is true and return true.
puts book.mark_taken_as_true   # This does not update value of taken. Because "taken" in this method is a different variable with sae name
puts book.is_available?   #- Thats why this print true because the value of "taken" in this method is still false.
