
def turn(board) 
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  
  #valid_move?(board, index)
  #  until valid_move?(board, index) == false 
  #     puts "Please enter 1-9:"
  #     input = gets.strip
  #  end 
  
  if valid_move?(board, index) == true
      move(board,input,draw = "X") 
  else
    puts "Please enter 1-9"
  end
  display_board(board)
  #move(board,input,draw = "X") 
end 

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, index)
  if (board[index] == " ") || (board[index] == "") || (board[index] == nil)
    return false
  else
    return true  
  end 
end

def valid_move?(board, index)
  if index.between?(0,8) && !position_taken?(board, index)
    true
  else
    false 
  end
end

def input_to_index(input)
  input.to_i-1
end

def move(board,input,draw = "X") 
  board[input] = draw
end

