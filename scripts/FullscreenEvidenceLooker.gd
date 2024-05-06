extends TextureRect

func set_picture():
	var texture_string = EvidenceTracker.evidence_data[EvidenceTracker.currently_observed_evidence]["examine"]
	if texture_string != null:
		texture = load(texture_string)
		
func clear_picture():
	texture = null
