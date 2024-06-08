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
			"jimothy door": "res://sprites/look_spots/jimothy_door.png",
			"jillian door": "res://sprites/look_spots/jillian_door.png",
			"lucas door": "res://sprites/look_spots/lucas_door.png",
			"benjamin door": "res://sprites/look_spots/benjamin_door.png",
			"bathroom door": "res://sprites/look_spots/bathroom_door.png",
			"hallway plant": "res://sprites/look_spots/hallway_plant.png",
			"hallway lightswitch": "res://sprites/look_spots/hallway_lightswitch.png",
			"jimothy painting": "res://sprites/look_spots/jimothy_painting.png",
			"map": "res://sprites/look_spots/map.png"
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
		"jillian bed":
			Dialogic.start("look_jillian_bed")
		"jillian books":
			Dialogic.start("look_jillian_books")
		"jillian lampshade":
			Dialogic.start("look_jillian_lampshade")
		"jillian laptop":
			Dialogic.start("look_jillian_laptop")
		"jillian laundry basket":
			Dialogic.start("look_jillian_laundry_basket")
		"jimothy door":
			Dialogic.start("look_jimothy_door")
		"jillian door":
			Dialogic.start("look-jillian-door")
		"lucas door":
			Dialogic.start("look-lucas-door")
		"benjamin door":
			Dialogic.start("look-benjamin-door")
		"bathroom door":
			Dialogic.start("look-bathroom-door")
		"hallway plant":
			Dialogic.start("look-hallway-plant")
		"hallway lightswitch":
			Dialogic.start("look-hallway-lightswitch")
		"jimothy painting":
			Dialogic.start("look-jimothy-painting")
		"map":
			Dialogic.start("look-map")
		_:
			Dialogic.start("look_fallback")
