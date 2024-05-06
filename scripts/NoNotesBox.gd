extends ColorRect

func calculate_if_shown():
	if EvidenceTracker.evidence.size() > 0:
		visible = false
	else:
		visible = true
		
func _ready():
	calculate_if_shown()
