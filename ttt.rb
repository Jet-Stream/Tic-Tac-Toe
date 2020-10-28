row_1 = [" ", " ", " "]
row_2 = [" ", " ", " "]
row_3 = [" ", " ", " "]
p row_1
p row_2
p row_3
#player 1's turn: inputs column and row, board updates with X
#create active_player variable to update which symbol is added to board
#create loop to cycle through turns while victory condition is false


victory = false
active_player_counter = 1
until victory == true do
if active_player_counter % 2 == 0
	active_player_symbol = "O"
	else
	active_player_symbol = "X"
	end
active_player_counter += 1
puts "Choose a row (top, middle, or bottom):"
row_selection = gets.chomp
puts "Choose a column(left, middle, or right):"
column_selection = gets.chomp
if row_selection == "middle" && column_selection == "middle"
	row_2[1] = active_player_symbol
	end	
if row_selection == "top" && column_selection == "left"
	row_1[0] = active_player_symbol
	end
if row_selection == "top" && column_selection == "middle"
	row_1[1] = active_player_symbol
	end
if row_selection == "top" && column_selection == "right"
	row_1[2] = active_player_symbol
	end
if row_selection == "middle" && column_selection == "left"
	row_2[0] = active_player_symbol
	end
if row_selection == "middle" && column_selection == "right"
row_2[2] = active_player_symbol
end
if row_selection == "bottom" && column_selection == "left"
	row_3[0] = active_player_symbol
	end
if row_selection == "bottom" && column_selection == "middle"
	row_3[1] = active_player_symbol
	end
if row_selection == "bottom" && column_selection == "right"
	row_3[2] = active_player_symbol
	end
p row_1
p row_2
p row_3
if row_1[0] == "X" && row_1[1] == "X" && row_1[2] == "X"
	victory = true
	puts "X wins!"
	end
if row_1[0] == "O" && row_1[1] == "O" && row_1[2] == "O"
	victory = true
	puts "O wins!"
	end
if row_1.all? {|cell| cell != " "} == true && row_2.all? {|cell| cell != " "} == true && row_3.all? {|cell| cell != " "} == true && victory == false
puts "It's a draw!"
end

end

