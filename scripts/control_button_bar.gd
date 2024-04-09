extends Control

func _ready():
	Dialogic.timeline_started.connect(_on_timeline_started)
	Dialogic.timeline_ended.connect(_on_timeline_ended)

func _on_timeline_started():
	print("timeline started - bar hidden")
	visible = false
	
func _on_timeline_ended():
	print("timeline ended - bar shown")
	visible = true
