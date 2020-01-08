def draw(board,instruction_board,round)
	printf("%28s \n", "round #{round}")
	printf("%s %40s\n", "[#{board[0]}] [#{board[1]}] [#{board[2]}]","[#{instruction_board[0]}] [#{instruction_board[1]}] [#{instruction_board[2]}]")
	printf("%s %40s\n", "[#{board[3]}] [#{board[4]}] [#{board[5]}]","[#{instruction_board[3]}] [#{instruction_board[4]}] [#{instruction_board[5]}]")
	printf("%s %40s\n", "[#{board[6]}] [#{board[7]}] [#{board[8]}]","[#{instruction_board[6]}] [#{instruction_board[7]}] [#{instruction_board[8]}]")
end 

def is_full?(marked_board)
	has_any_left = marked_board.include?(false)
	puts !has_any_left
	return !has_any_left
end

def player_turn(mark,player,board,instruction_board,marked_board,round)
	draw(board,instruction_board,round)
	printf("%28s \n", "#{player}, select where to enter #{mark} on board accoring to instructions on the upright")
	index  = 0
	while true
		index  = Integer(gets.chomp) rescue nil
		if index == nil || !instruction_board.include?(index) || marked_board[index-1]
			puts "Enter again"
			next
		end
		break
	end
	index -= 1
	marked_board[index] = true
	board[index] = mark
end

def have_winner(player,mark,board)
	horizontally = check_horizontal(mark,board) 
	vertically = check_vertical(mark,board)
	diagonally = check_diagonal(mark,board)
	if horizontally || vertically || diagonally
		puts "\n\nPlayer #{player} is the Winner"
		return true
	end
	false
end

def check_horizontal(mark,board)
	row_length = Math.sqrt(board.length)
	for i in 0..row_length-1 
		if mark == board[row_length*i] && mark == board[row_length*i + 1] && mark == board[row_length*i + 2]
			return true
		end
	end
	false
end

def check_vertical(mark,board)
	col_length = Math.sqrt(board.length)
	for i in 0..col_length-1 
		if mark == board[i] && mark == board[i + col_length] && mark == board[i + col_length + col_length]
			return true
		end
	end
	false
end

def check_diagonal(mark,board)
	row_length = Math.sqrt(board.length)
	if board[0] == mark && board[4] == mark && board[8] == mark
		return true
	end
	if board[2] == mark && board[4] == mark && board[6] == mark
		return true
	end
	false
end

board = Array.new(9,"")
marked_board = Array.new(9,false) 
instruction_board = [1,2,3,4,5,6,7,8,9]
TIC = "X"
TAC = "O"

puts "Enter the name of a First Player"
player1 = gets.chomp
puts "Enter the name of a Second Player"
player2 = gets.chomp

round = 1
# puts round += 1
while true
	player_turn(TIC,player1,board,instruction_board,marked_board,round)
	break if have_winner(player1,TIC,board)
	break if is_full?(marked_board)
	player_turn(TAC,player2,board,instruction_board,marked_board,round)
	break if have_winner(player2,TAC,board)
	break if is_full?(marked_board)
	round += 1
end

draw(board,instruction_board,round)
puts "GAME HAS ENDED"
	



