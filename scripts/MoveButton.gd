extends TextureButton

func _ready():
	var click_mask := BitMap.new()
	click_mask.create_from_image_alpha(texture_normal.get_image())
	texture_click_mask = click_mask

func _pressed():
	if not Global.done_first_move_button:
		Dialogic.start("move_button")
	elif (Global.current_room == "upstairs hallway") and (not Global.taken_map):
		Dialogic.start("cant_move_take_map")
	else:
		Dialogic.start("move_menu")
