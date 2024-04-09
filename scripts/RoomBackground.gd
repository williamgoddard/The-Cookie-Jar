extends Sprite2D

func _ready():
	Global.set_current_room_signal.connect(update_background)
	update_background()

func update_background():
	texture = Texture2D.new()
	match Global.current_room:
		"jillian's room":
			texture = load("res://sprites/background/jillian_bedroom.png")
		_:
			texture = load("res://sprites/background/black.png")
