extends Label

func _ready():
	EvidenceTracker.updated_currently_observed_evidence.connect(set_description)

func set_description():
	var current_evidence = EvidenceTracker.currently_observed_evidence
	text = EvidenceTracker.evidence_data[current_evidence]["description"]
