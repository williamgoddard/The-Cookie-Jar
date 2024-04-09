extends Node

# Whether the user has pressed the move button for the first time yet
var done_first_move_button : bool = false

# The room the game is current in
var current_room : String = "jillian's room"
signal set_current_room_signal(new_room)

func set_current_room(new_room : String):
	current_room = new_room
	set_current_room_signal.emit(new_room)
