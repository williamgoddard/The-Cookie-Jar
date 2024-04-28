extends Node

var evidence_data = {
	
	"11037": {
		"name": "11037",
		"icon": "res://sprites/interface/evidence icons/11037.png",
		"description": "It's a very suspicious number"
	}
	
}

var evidence = []

var currently_observed_evidence : String
signal updated_currently_observed_evidence

func set_observed_evidence(key : String):
	currently_observed_evidence = key
	updated_currently_observed_evidence.emit()
