def fibonacci
  begin
    # Get number from user
    puts "\nGET first 'n' elements of fibonacci sequence"
    puts "enter value of n (You can terminate the program by entering any nagetive value):"
    number = gets.chomp.to_i

    def fibo(number)
      abort("Exit") if number < 0
      a = 0
      b = 1
      arr = [0,1]

      if number == 0
        puts arr.first
        return arr[0]
      elsif number == 1
        puts arr.to_s
        return arr[1]
      elsif 
        while number >= 2 do
          
          c = a + b
          a = b
          b = c
          arr.push c
          number = number - 1 
        end
        return arr.to_s
      end
      puts arr.to_s       
    end

    fibo(number)
  end while number > -1
end

fibonacci