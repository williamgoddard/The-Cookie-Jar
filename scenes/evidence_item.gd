extends Button

@export var key : String

func _pressed():
	EvidenceTracker.set_observed_evidence(key)
