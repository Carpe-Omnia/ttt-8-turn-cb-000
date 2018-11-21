def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  spot = board[index]
  if index > 8 || index < 0
    return false
  elsif spot == "" || spot == " " || spot == nil
    return true
  else
    return false
  end
end

def move(board, index, token='X')
  board[index] = token
end

def turn(board)
  dex = 10
  until valid_move?(board, dex)
    puts "Please enter 1-9"
    input = gets.to_i
    dex = input - 1
  end
  move(board, dex)
  display_board(board)
end
