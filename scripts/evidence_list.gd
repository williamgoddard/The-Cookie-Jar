extends Control

var evidence_item_scene = preload("res://scenes/evidence_item.tscn")

func spawn_evidences():
	var number_of_items = 20
	for i in number_of_items:
		var new_evidence = evidence_item_scene.instantiate()
		add_child(new_evidence)

func _ready():
	spawn_evidences()
