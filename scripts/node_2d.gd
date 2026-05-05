extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Dialogic.timeline_ended.connect(_on_timeline_ended)
	Dialogic.signal_event.connect(_on_signal)	
	Dialogic.start("Timeline1")
	
	pass # Replace with function body.

func _on_timeline_ended():
	get_tree().quit()
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _on_signal(signal_passed_in):
	match signal_passed_in:
		"fim":
			pass
