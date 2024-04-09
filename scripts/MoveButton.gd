extends TextureButton


# Called when the node enters the scene tree for the first time.
func _ready():
	var click_mask := BitMap.new()
	click_mask.create_from_image_alpha(texture_normal.get_image())
	texture_click_mask = click_mask

func _pressed():
	Dialogic.start("move_button")
