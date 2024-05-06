extends Node

var evidence_data = {
	
	"map": {
		"name": "House Layout",
		"icon": "res://sprites/interface/evidence icons/map.png",
		"description": "It's a map showing the layout of the house. You never know when a map might come in handy when it comes to solving a mystery!",
		"examine": "res://sprites/interface/Evidence Popups/Map.png"
	}
	
}

var evidence = []

var currently_observed_evidence : String
signal updated_currently_observed_evidence

func set_observed_evidence(key : String):
	currently_observed_evidence = key
	updated_currently_observed_evidence.emit()
