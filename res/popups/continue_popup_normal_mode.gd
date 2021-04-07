extends Popup

var path = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

#Volta para a tela de rolar dados ao final de uma partida
func _on_YesButton_pressed():
	path = 1;
	$FadeIn2.show();
	$FadeIn2.fade_in();	
	pass # Replace with function body.

#Vai para a tela de fim de jogo
func _on_NoButton_pressed():
	path = 2;
	$FadeIn2.show();
	$FadeIn2.fade_in();
	pass # Replace with function body.


func _on_FadeIn2_fade_finished():
	if (path == 1):
		get_tree().change_scene("res://res/RollDicesScreen.tscn");
	elif (path == 2):
		get_tree().change_scene("res://res/EndGameScreen.tscn");
	pass # Replace with function body.
