# Main action for funkonacci series without recursion 
def funkonacci(number)
  n = 0
  arr = []
  while n <= number do
    
    # If n is less than 1
    if n <= 0
      a = 0
      arr.push a

    #if n is 1  
    elsif n == 1
      b = 1
      arr.push b
    
    # Else for any positive number excluding 0,1 and negatives
    else
      c = b - ( 2 * a )
      a = b
      b = c
      arr.push c
    end
    n = n + 1
  end

  # Gets array of the value of F(0)..F(n)
  # We can directly use this values to display result
  return arr
end

# Loop to make program run  continuously, user can end this loop by entering value '-1'
begin
  puts "\nEnter number to print first 'n' elements of funkonacci series"
  puts "To exit program enter '-1'\n"

  puts "Enter number:"
  number = gets.chomp
  n = number.to_i

  # Check if entered value is valid or not
  if /[^0-9]/.match(number)
    if number.to_i == -1
      puts "Exit"
    else
      puts "\n-------Please enter valid positive integer-------\n"
    end
  else

    # Store return value from funkonacci(n) in array so we can use this value outside of function
    result_arr = funkonacci(n)
    
    # Display Result
    puts "\nResult:"
    puts "you have entered number '#{n}',so f(#{n})is: #{result_arr[n]}  "
    puts "your series is: #{result_arr.join(",")}"
  end
end while n != -1
