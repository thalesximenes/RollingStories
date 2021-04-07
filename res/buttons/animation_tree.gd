extends AnimationTree

onready var AnimTree = self

#Responsável por animar os botões de música
func _ready():
	self.active = true;
	if GLOBAL.musicStatus:
		self["parameters/playback"].start('ToggleOn')
	else:
		self["parameters/playback"].start('ToggleOff')

func _on_Toggle_toggled(button_pressed):
	if button_pressed:
		#if (GLOBAL.soundStatus):
			#get_parent().get_node("AudioStreamPlayer").play(0.60)
		self["parameters/playback"].travel('ToggleOn')
		GLOBAL.musicStatus = true;
	else:
		#if (GLOBAL.soundStatus):
			#get_parent().get_node("AudioStreamPlayer").play(0.60)
		self["parameters/playback"].travel('ToggleOff')
		GLOBAL.musicStatus = false;
		
	pass # Replace with function body.
