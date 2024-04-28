extends TextureButton

@export var key : String

func _ready():
	var click_mask := BitMap.new()
	click_mask.create_from_image_alpha(texture_normal.get_image())
	texture_click_mask = click_mask

func _pressed():
	LookManager.look_spot(key)
