extends AnimationTree

onready var AnimTree = self

#Responsável por animar os botões de música
func _ready():
	self.active = true;
	if GLOBAL.soundStatus:
		self["parameters/playback"].start('ToggleOn')
	else:
		self["parameters/playback"].start('ToggleOff')

func _on_Toggle_toggled(button_pressed):
	
	if button_pressed:
		self["parameters/playback"].travel('ToggleOn')
		#get_parent().get_node("AudioStreamPlayer").play(0.60)
		GLOBAL.soundStatus = true;
	
	else:
		self["parameters/playback"].travel('ToggleOff')
		GLOBAL.soundStatus = false;
		
	pass # Replace with function body.
