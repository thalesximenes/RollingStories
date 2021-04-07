extends Popup

var scene = 0;

#Volta para a tela de rolar dados ao final de uma partida
func _on_YesButton_pressed():
	scene = 0
	$FadeIn.show();
	$FadeIn.fade_in();
	pass # Replace with function body.

#Volta para a tela inicial ao final de uma partida
func _on_NoButton_pressed():
	scene = 1
	$FadeIn.show();
	$FadeIn.fade_in();
	pass # Replace with function body.


func _on_FadeIn_fade_finished():
	if (scene == 0):
		get_tree().change_scene("res://res/RollDicesScreen.tscn");
	elif (scene == 1):
		get_tree().change_scene("res://res/TitleScreen.tscn");
	pass # Replace with function body.
