extends Control

func _ready():
	Dialogic.timeline_started.connect(hide)
	Dialogic.timeline_ended.connect(show)
