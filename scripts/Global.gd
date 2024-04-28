extends Node

# Constants
const thought_colour := "light_blue"

var done_first_move_button := false
var done_meet_abigail := false

# The room the game is current in
var current_room : String = "jillian's room"
signal set_current_room_signal

func set_current_room(new_room : String):
	current_room = new_room
	set_current_room_signal.emit()
