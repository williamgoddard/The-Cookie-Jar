extends Sprite2D

func _ready():
	Global.set_current_room_signal.connect(update_background)
	update_background()

func update_background():
	texture = Texture2D.new()
	texture = load(Global.background_textures[Global.current_room])
