extends Node

# Constants
const thought_colour := "light_blue"

var taken_magnifying_glass := false
var done_first_move_button := false
var done_meet_abigail := false
var done_meet_jimothy := false

var background_textures = {
	"jillian's room": "res://sprites/background/jillian_bedroom.png",
	"abigail's room": "res://sprites/background/abigail_bedroom.png",
	"benjamin's room": "res://sprites/background/benjamin_bedroom.png",
	"jimothy's room": "res://sprites/background/jimothy_bedroom.png",
	"lucas' room": "res://sprites/background/lucas_bedroom.png",
	"clara's room": "res://sprites/background/clara_bedroom.png",
	"bathroom": "res://sprites/background/bathroom.png",
	"upstairs hallway": "res://sprites/background/upstairs_hallway.png",
	"downstairs hallway": "res://sprites/background/downstairs_hallway.png",
	"kitchen": "res://sprites/background/kitchen.png",
	"living room": "res://sprites/background/living_room.png",
	"basement": "res://sprites/background/basement.png"
}

# The room the game is current in
var current_room : String = "jillian's room"
signal set_current_room_signal

func set_current_room(new_room : String):
	current_room = new_room
	set_current_room_signal.emit()
	
func take_magnifying_glass():
	taken_magnifying_glass = true
	background_textures["jillian's room"] = "res://sprites/background/jillian_bedroom_2.png"
	LookManager.look_spots["jillian's room"].erase("magnifying glass")
	LookManager.look_spots["jillian's room"]["jillian bed"] = "res://sprites/look_spots/bed.png"
	LookManager.look_spots["jillian's room"]["jillian books"] = "res://sprites/look_spots/books.png"
	LookManager.look_spots["jillian's room"]["jillian lampshade"] = "res://sprites/look_spots/lampshade.png"
	LookManager.look_spots["jillian's room"]["jillian laptop"] = "res://sprites/look_spots/laptop.png"
	LookManager.look_spots["jillian's room"]["jillian laundry basket"] = "res://sprites/look_spots/laundry_basket.png"
	set_current_room("jillian's room")

func _ready():
	Input.set_custom_mouse_cursor(load("res://sprites/interface/pointer.png"), 0, Vector2(2, 2))
	Input.set_custom_mouse_cursor(load("res://sprites/interface/magnifying_glass.png"), 3, Vector2(20, 20))
