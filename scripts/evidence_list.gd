extends Control

var evidence_item_scene = preload("res://scenes/evidence_item.tscn")

var currently_spawned_evidence = []

func spawn_evidences():
	for key in EvidenceTracker.evidence:
		var new_evidence = evidence_item_scene.instantiate()
		var evidence_data = EvidenceTracker.evidence_data[key]
		new_evidence.key = key
		new_evidence.text = evidence_data["name"]
		new_evidence.icon = load(evidence_data["icon"])
		currently_spawned_evidence.append(new_evidence)
		add_child(new_evidence)
		
func reset_envidences():
	for evidence in currently_spawned_evidence:
		evidence.queue_free()
	currently_spawned_evidence = []
	spawn_evidences()

func _ready():
	spawn_evidences()
