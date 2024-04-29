extends Control

var look_spot_scene = preload("res://scenes/look_spot.tscn")

var currently_spawned_look_spots := []

func _ready():
	LookManager.look_spot_interacted_with.connect(clear_look_spots)

func create_look_spots():
	for look_spot_key in LookManager.look_spots[Global.current_room]:
		var look_spot = look_spot_scene.instantiate()
		look_spot.key = look_spot_key
		look_spot.texture_normal = load(LookManager.look_spots[Global.current_room][look_spot_key])
		currently_spawned_look_spots.append(look_spot)
		add_child(look_spot)
		
func clear_look_spots():
	for look_spot in currently_spawned_look_spots:
		look_spot.queue_free()
	currently_spawned_look_spots.clear()
	
func remove_look_spot(key: String):
	for look_spot in currently_spawned_look_spots:
		if look_spot.key == key:
			currently_spawned_look_spots.erase(look_spot)
			look_spot.queue_free()
