extends TextureButton

func _ready():
	var click_mask := BitMap.new()
	click_mask.create_from_image_alpha(texture_normal.get_image())
	texture_click_mask = click_mask

func _pressed():
	if not Global.done_first_move_button:
		Global.done_first_move_button = true
		Dialogic.start("move_button")
	else:
		Dialogic.start("move_menu")
