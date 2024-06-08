extends Button

func _ready():
	EvidenceTracker.updated_currently_observed_evidence.connect(make_shown)
	EvidenceTracker.updated_currently_observed_evidence.connect(calculate_if_active)
	make_hidden()

func make_shown():
	visible = true
	
func make_hidden():
	visible = false

func calculate_if_active():
	if EvidenceTracker.currently_observed_evidence.is_empty():
		disabled = true
	elif EvidenceTracker.evidence_data[EvidenceTracker.currently_observed_evidence]["examine"] == null:
		disabled = true
	else:
		disabled = false
