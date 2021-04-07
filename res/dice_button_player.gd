extends AudioStreamPlayer

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _on_Button_pressed():
	if (GLOBAL.soundStatus):
		get_node("AudioStreamPlayer").play(0.60)
	pass # Replace with function body.

