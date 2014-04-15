puts "Enter number to print first 'n' elements of funkonacci series"
puts "To exit program press 'x'\n"

puts "Enter number:"
number = gets.chomp.to_i

def funk_rec(n)
  if n < 1
    return 0
  elsif n == 1
    return 1
  else
    return ( funk_rec(n-1) - ( 2 * funk_rec(n-2)))
  end
end

result = (0..number).inject do | hello , n |
  hello.to_s + "," + funk_rec(n).to_s 
end

result_arr = result.split(",")
puts "you have entered number '#{number}' so at position #{number}, value is:#{result_arr[number-1]} "
puts "your series is:#{result}"


