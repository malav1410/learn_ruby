# Main action for funkonacci series with Recursion
def funk_rec(n)
  if n < 1
    return 0
  elsif n == 1
    return 1
  else
    return ( funk_rec(n-1) - ( 2 * funk_rec(n-2)))
  end
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

    # If number is -1 then print 'EXIT' cause it will end program else print error
    if number.to_i == -1
      puts "Exit"
    else
      puts "\n-------Please enter valid positive integer-------\n"
    end
  else

    # To print value which is return by funk_rec function, its logic is written outside of action
    # Cause in recursion you can not get exact value in sequence cause funk_rec action call it self many number of time
    # So your function print one value many times   
    result = (0..n).inject do | string , num |
      string.to_s + "," + funk_rec(num).to_s 
    end
    
    if n == 0
      result_arr = result
    else
      result_arr = result.split(",")
    end

    # Print Result
    puts "\nResult:"
    puts "you have entered number '#{n}',so f(#{n})is: #{result_arr[n]} "
    puts "your series is: #{result}\n\n"
  end
end while n != -1