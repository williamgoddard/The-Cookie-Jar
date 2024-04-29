extends Node

signal look_spot_interacted_with

var look_spots = {
	
	"jillian's room":
		{
			"magnifying glass": "res://sprites/look_spots/magnifying_glass.png"
		},
		
	"abigail's room":
		{
		},
		
	"benjamin's room":
		{
		},
		
	"jimothy's room":
		{
		},
		
	"lucas' room":
		{
		},
		
	"clara's room":
		{
		},
		
	"bathroom":
		{
		},
		
	"upstairs hallway":
		{
		},
		
	"downstairs hallway":
		{
		},
		
	"kitchen":
		{
		},
		
	"living room":
		{
		},
		
	"basement":
		{
		}
		
}

func look_spot(key : String):
	look_spot_interacted_with.emit()
	match key:
		"magnifying glass":
			Dialogic.start("take_magnifying_glass")
		_:
			Dialogic.start("look_fallback")
