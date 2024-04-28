extends Node

func look_spot(key : String):
	match key:
		_:
			Dialogic.start("look_fallback")
