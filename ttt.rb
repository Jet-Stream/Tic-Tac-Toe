row_1 = [" ", " ", " "]
row_2 = [" ", " ", " "]
row_3 = [" ", " ", " "]
p row_1
p row_2
p row_3
#On active player's turn, program asks for column and row, board updates with active player's symbol
#Active_player variable determines which symbol is added to board
#Game loop to cycles through turns while victory condition is false or until the board is full

victory = false
active_player_counter = 1
until victory == true do
if active_player_counter % 2 == 0
	active_player_symbol = "O"
	else
	active_player_symbol = "X"
	end
active_player_counter += 1
puts "#{active_player_symbol}, Choose a row (top, middle, or bottom):"
row_selection = gets.downcase.chomp
until row_selection == "top" || row_selection == "middle" || row_selection == "bottom" do
	puts "Sorry, didn't catch that. Try again"
	row_selection = gets.downcase.chomp
	end
puts "#{active_player_symbol}, Choose a column(left, middle, or right):"
column_selection = gets.downcase.chomp
until column_selection == "left" || column_selection == "middle" || column_selection == "right" do
	puts "Sorry, didn't catch that. Try again"
	column_selection = gets.downcase.chomp
	end

#board placements
if row_selection == "middle" && column_selection == "middle"
	if row_2[1] == " "
		row_2[1] = active_player_symbol
	else
		puts "That space has already been taken"
		active_player_counter -= 1 #to keep the active player from changing
		end
	end
if row_selection == "top" && column_selection == "left"
	if row_1[0] == " "
		row_1[0] = active_player_symbol
	else
		puts "That space has already been taken"
		active_player_counter -= 1
	end
end
if row_selection == "top" && column_selection == "middle"
	if row_1[1] == " "
		row_1[1] = active_player_symbol
	else
		puts "That space has already been taken"
		active_player_counter -= 1
	end
end
if row_selection == "top" && column_selection == "right"
	if row_1[2] == " "
		row_1[2] = active_player_symbol
	else
		puts "That space has already been taken"
		active_player_counter -= 1
	end
end
if row_selection == "middle" && column_selection == "left"
	if row_2[0] == " "
		row_2[0] = active_player_symbol
	else
		puts "That space has already been taken"
		active_player_counter -= 1
	end
end
if row_selection == "middle" && column_selection == "right"
	if row_2[2] == " "
		row_2[2] = active_player_symbol
	else
		puts "That space has already been taken"
		active_player_counter -= 1
	end
end
if row_selection == "bottom" && column_selection == "left"
	if row_3[0] == " "
	 row_3[0] = active_player_symbol
 	else
 		puts "That space has already been taken"
		active_player_counter -= 1
	end
end
if row_selection == "bottom" && column_selection == "middle"
	if row_3[1] == " "
	row_3[1] = active_player_symbol
	else
		puts "That space has already been taken"
		active_player_counter -= 1
	end
end
if row_selection == "bottom" && column_selection == "right"
	if row_3[2] == " "
	row_3[2] = active_player_symbol
	else
		puts "That space has already been taken"
		active_player_counter -= 1
	end
end
p row_1
p row_2
p row_3

#win conditions
#row wins
if row_1[0] == "X" && row_1[1] == "X" && row_1[2] == "X"
	victory = true
	puts "X wins!"
	end
if row_1[0] == "O" && row_1[1] == "O" && row_1[2] == "O"
victory = true
puts "O wins!"
	end
if row_2[0] == "X" && row_2[1] == "X" && row_2[2] == "X"
victory = true
puts "X wins!"
end
if row_2[0] == "O" && row_2[1] == "O" && row_2[2] == "O"
victory = true
puts "O wins!"
end
if row_3[0] == "X" && row_3[1] == "X" && row_3[2] == "X"
victory = true
puts "X wins!"
end
if row_3[0] == "O" && row_3[1] == "O" && row_3[2] == "O"
victory = true
puts "O wins!"
end
	
#diagonal wins
if row_1[0] == "X" && row_2[1] =="X" && row_3[2] =="X"
	victory = true
	puts "X wins!"
	end
if row_1[0] == "O" && row_2[1] =="O" && row_3[2] =="O"
victory = true
puts "O wins!"
end
if row_1[2] == "X" && row_2[1] =="X" && row_3[0] =="X"
	victory = true
	puts "X wins!"
	end
if row_1[2] == "O" && row_2[1] =="O" && row_3[0] =="O"
victory = true
puts "O wins!"
end

#column wins
if row_1[0] == "X" && row_2[0] == "X" && row_3[0] == "X"
	victory = true
	puts "X wins!"
	end
if row_1[0] == "O" && row_2[0] == "O" && row_3[0] == "O"
victory = true
puts "O wins!"
	end
if row_1[1] == "X" && row_2[1] == "X" && row_3[1] == "X"
victory = true
puts "X wins!"
end
if row_1[1] == "O" && row_2[1] == "O" && row_3[1] == "O"
victory = true
puts "O wins!"
end
if row_1[2] == "X" && row_2[2] == "X" && row_3[2] == "X"
victory = true
puts "X wins!"
end
if row_1[2] == "O" && row_2[2] == "O" && row_3[2] == "O"
victory = true
puts "O wins!"
end

#draw condition
if row_1.all? {|cell| cell != " "} == true && row_2.all? {|cell| cell != " "} == true && row_3.all? {|cell| cell != " "} == true && victory == false
puts "It's a draw!"
break
end

end
