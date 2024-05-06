extends ColorRect

func _ready():
	EvidenceTracker.updated_currently_observed_evidence.connect(make_shown)
	make_hidden()

func make_shown():
	position = Vector2(448, 109)
	visible = true
	
func make_hidden():
	visible = false
