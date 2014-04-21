load 'player.rb'

class Board
  def initialize
    @board_value_hash = { 1 => nil, 2 => nil, 3 => nil, 4 => nil, 5 => nil, 6 => nil, 7 => nil, 8 => nil, 9 => nil }
    @result_arr = [ [1,2,3], [4,5,6], [7,8,9], [1,4,7], [2,5,8], [3,6,9], [1,5,9], [3,5,7]]
    @player1_arr = []
    @player2_arr = []
    @player1
    @player2
  end

  def start
    instructions
    puts "Enter player1 name: "
    player1_name = gets.chomp
    @player1 = create_player(player1_name, "X")
    puts "Enter player2 name: "
    player2_name = gets.chomp
    @player2 = create_player(player2_name, "O")
    puts "#{@player1.name} will play with '#{@player1.symbol}' and #{@player2.name} will play with '#{@player2.symbol}' \n\n"
    start_game_logic

  end

private

  def create_player(name, symbol)
    player_name = name
    player_symbol = symbol
    player = Player.new(player_name,player_symbol)
    return player
  end
  
  def start_game_logic
    display_game_board
    n = 0
    while n < 6 do
      position_entered_by_player1
      display_game_board
      if n > 1
        if check_result(@player1_arr.sort!) == true
          puts "#{@player1.name.capitalize} wins"
          end_game_logic
        end
      end
      position_entered_by_player2
      display_game_board
      if n > 1
        if check_result(@player2_arr.sort!) == true
          puts "#{@player2.name.capitalize} wins"
          end_game_logic
        end
      end
      n += 1
    end
  end

  def end_game_logic
    puts "Play again?(y/n)"
    play_again = gets.chomp
    if play_again == "y"
      start
    elsif play_again == "n"
      puts "thanks for playing"
      exit
    else
      end_game_logic
    end
  end

  # Display who wins
  def check_result(position_arr)
    @result_arr.each do |lucky_arr|
      if position_arr & lucky_arr == lucky_arr
        return true
      else
        false
      end
    end
  end
  # Player 1
  def position_entered_by_player1
    puts "#{@player1.name.capitalize}'s turn(X):"
    player1_position = gets.chomp.to_i
    if is_position_valid?(player1_position) == true 
      @board_value_hash[player1_position] = "X"
      @player1_arr.push player1_position
    else
      puts "Enter valid position"
      position_entered_by_player1
    end
  end

  # Player 2
  def position_entered_by_player2
    puts "#{@player2.name.capitalize}'s turn(O):"
    player2_position = gets.chomp.to_i
    if is_position_valid?(player2_position) == true 
      @board_value_hash[player2_position] = "O"
      @player2_arr.push player2_position
    else
      puts "Enter valid position"
      position_entered_by_player2
    end
  end

  def is_position_valid?(position)
    if /(^[1-9]$)/.match(position.to_s) != nil  
      if @board_value_hash[position] != nil
        puts "The position is already entered, please enter again"
        return false
      else
        return true
      end
    else
      return false
    end
  end

  def display_game_board
    puts "   #{@board_value_hash[1]}   |   #{@board_value_hash[2]}   |   #{@board_value_hash[3]}   "
    puts "-----------------------"
    puts "   #{@board_value_hash[4]}   |   #{@board_value_hash[5]}   |   #{@board_value_hash[6]}   "
    puts "-----------------------"
    puts "   #{@board_value_hash[7]}   |   #{@board_value_hash[8]}   |   #{@board_value_hash[9]}   "
    puts "\n\n"
  end
  def instructions
    puts "-------------------------------"
    puts "Welcome to the TIC-TAC-TOE game"
    puts "-------------------------------\n"
    puts "\n-------------"
    puts "Instructions:"
    puts "-------------\n"
    puts "-->This is the design of main board which will display your input as X and O in each cell\n\n"
    puts "   1   |   2   |   3   "
    puts "-----------------------"
    puts "   4   |   5   |   6   "
    puts "-----------------------"
    puts "   7   |   8   |   9   "
    puts "\n\n"
    puts "--> In this table when game ask you to enter position then you have to just enter the number of that position"
    puts "--> For example if player wants to mark his/her symbol(X/O) in 5th position then just enter 5"
    puts "--- ENJOY ---\n\n"
  end
end