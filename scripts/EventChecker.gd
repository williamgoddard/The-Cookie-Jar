extends Node

func _ready():
	Global.set_current_room_signal.connect(check_for_events)

func check_for_events():
	match Global.current_room:
		'upstairs hallway':
			if not Global.done_meet_abigail:
				Dialogic.start('meet_abigail')
				Global.done_meet_abigail = true
