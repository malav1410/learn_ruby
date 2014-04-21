load 'player.rb'

class Board
  def initialize
    @board_value_hash = { 1 => nil, 2 => nil, 3 => nil, 4 => nil, 5 => nil, 6 => nil, 7 => nil, 8 => nil, 9 => nil }
    @player1
    @player2
  end

  def start
    puts "-------------------------------"
    puts "Welcome to the TIC-TAC-TOE game"
    puts "-------------------------------\n"
    puts "\n-------------"
    puts "Instructions:"
    puts "-------------\n"
    puts "-->This is the design of main board which will display your input as X and O in each cell\n"
    puts "   1   |   2   |   3   "
    puts "-----------------------"
    puts "   4   |   5   |   6   "
    puts "-----------------------"
    puts "   7   |   8   |   9   "
    puts "\n\n"
    puts "--> In this table when game ask you to enter position then you have to just enter the number of that position"
    puts "--> For example if player wants to mark his/her symbol(X/O) in 5th position then just enter 5"
    puts "--- ENJOY ---\n\n"
    puts "Enter player1 name: "
    player1_name = gets.chomp
    @player1 = create_player(player1_name, "X")
    puts "Enter player2 name: "
    player2_name = gets.chomp
    @player2 = create_player(player2_name, "O")
    puts "#{@player1.name} will play with '#{@player1.symbol}' and #{@player2.name} will play with #{@player2.symbol} \n\n"


  end

  def create_player(name, symbol)
    player_name = name
    player_symbol = symbol
    player = Player.new(player_name,player_symbol)
    return player
  end
end