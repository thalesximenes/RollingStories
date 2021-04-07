extends Control

var menuPopUp


# Called when the node enters the scene tree for the first time.
func _ready():
	BACKGROUND_SOUND.volume_db = -16;
	BACKGROUND_SOUND.play();
	menuPopUp = get_node("ModesPopUp");
	pass # Replace with function body.

# Volta para a tela inicial, caso pressionado o botão
func _on_Exit_pressed():
	menuPopUp.show()
	pass # Replace with function body.

# Funções responsáveis por escolher o modo
func _on_RapidModeButton_pressed():
	GLOBAL.mode = 1;
	$FadeIn.show()
	$FadeIn.fade_in()
	pass # Replace with function body.

func _on_NormalModeButton_pressed():
	GLOBAL.mode = 0;
	$FadeIn.show();
	$FadeIn.fade_in();
	
	pass # Replace with function body.

func _on_FadeIn_fade_finished():
	get_tree().change_scene("res://res/RollDicesScreen.tscn")
	pass # Replace with function body.
