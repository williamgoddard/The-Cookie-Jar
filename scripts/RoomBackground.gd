extends Sprite2D

func _ready():
	Global.set_current_room_signal.connect(update_background)
	update_background()

func update_background():
	texture = Texture2D.new()
	match Global.current_room:
		"jillian's room":
			texture = load("res://sprites/background/jillian_bedroom.png")
		"abigail's room":
			texture = load("res://sprites/background/abigail_bedroom.png")
		"benjamin's room":
			texture = load("res://sprites/background/benjamin_bedroom.png")
		"jimothy's room":
			texture = load("res://sprites/background/jimothy_bedroom.png")
		"lucas' room":
			texture = load("res://sprites/background/lucas_bedroom.png")
		"clara's room":
			texture = load("res://sprites/background/clara_bedroom.png")
		"bathroom":
			texture = load("res://sprites/background/bathroom.png")
		"upstairs hallway":
			texture = load("res://sprites/background/upstairs_hallway.png")
		"downstairs hallway":
			texture = load("res://sprites/background/downstairs_hallway.png")
		"kitchen":
			texture = load("res://sprites/background/kitchen.png")
		"living room":
			texture = load("res://sprites/background/living_room.png")
		"basement":
			texture = load("res://sprites/background/basement.png")
		_:
			texture = load("res://sprites/background/black.png")
