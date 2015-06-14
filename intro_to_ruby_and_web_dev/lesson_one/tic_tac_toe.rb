require 'pry'
# display functions
def welcome_user 
  puts 'Welcome to Tic Tac Toe. Press any enter to start'
  gets
end 

def display_board(b)
  puts " #{b[1]} | #{b[2]} | #{b[3]} "
  puts "-----------"
  puts " #{b[4]} | #{b[5]} | #{b[6]} "
  puts "-----------"
  puts " #{b[7]} | #{b[8]} | #{b[9]} "
end

def display_winner(b)
  if b[:winner] = 'X'
    puts 'You win!'
  elsif b[:winner] = 'O'
    puts 'You lose'
  else 
    puts 'There was a tie.'
  end
end

# state functions
def initialize_board
  b = {}
  (1..9).each {|pos| b[pos] = pos}
  b[:winning_lines] = [
    [1,2,3],
    [4,5,6],
    [7,8,9],
    [1,5,9],
    [7,5,9],
    [1,4,7],
    [2,5,8],
    [3,6,9]
  ]
  b[:x_pos] = []
  b[:o_pos] = []
  b[:empty_pos] = [1,2,3,4,5,6,7,8,9]
b
end

def add_move(b, pos, player_symbol)
  b[pos] = player_symbol
  b[:empty_pos].delete(pos)
  if player_symbol == 'X'
    b[:x_pos] << pos
  elsif player_symbol == 'O'
    b[:o_pos] << pos
  end
end

def there_is_winner(b)
  b[:winning_lines].each do |line|
    puts get_overlap(b[:o_pos], line)
    if get_overlap(b[:x_pos], line).length == 3
      b[:winner] = 'X'
      return true
    elsif get_overlap(b[:o_pos], line).length == 3
      b[:winner] = 'O'
      return true
    else
      return false
    end
  end
end

def game_ended(b)
	return true if b[:empty_pos].length == 0
end

# user input functions
def get_user_move(b)
  pos_is_available = false
  begin 
    puts "Pick a square (1 - 9):"
    pos = gets.chomp.to_i
    if pos < 10 && b[:empty_pos].include?(pos) then pos_is_available = true end
  end until pos_is_available
  add_move(b, pos, 'X') 
end

# computer moves functions 
def get_comp_move(b)
  possible_moves = []
  if b[:o_pos].length == 0 
    possible_moves[0] = b[:empty_pos].sample
  else 
    b[:winning_lines].each do |line|
      comp_squares = get_overlap(line, b[:o_pos])
      empty_squares = get_overlap(line, b[:empty_pos])
      user_squares = get_overlap(line, b[:x_pos])
      if empty_squares.length < 3
        # win
        if comp_squares.length == 2 
          possible_moves[0] = empty_squares.sample
        # stop user from winning
        elsif user_squares.length == 2	
          possible_moves[1] = empty_squares.sample
        # second square in line
        elsif comp_squares.length == 1 && user_squares.length == 0
          possible_moves[2] = empty_squares.sample
        # block line for user
        elsif comp_squares.length == 0 && user_squares.length == 1
          possible_moves[3] = empty_squares.sample
        # place first square  
        elsif empty_squares.length == 3
          possible_moves[4] = empty_squares.sample
        end
      end
    end
  end
  possible_moves.each {|move| return add_move(b, move, 'O') if move.class == Fixnum}
end


def get_overlap(arr1, arr2)
  concat = (arr1 + arr2).flatten
  overlap = concat.select{|e| concat.count(e) > 1}.uniq
end



welcome_user
board = initialize_board
display_board(board)
loop do
  get_user_move(board) 
  break if there_is_winner(board) || game_ended(board)
  display_board(board)
  get_comp_move(board)
  break if there_is_winner(board) || game_ended(board)
  display_board(board)
end
display_winner(board)


