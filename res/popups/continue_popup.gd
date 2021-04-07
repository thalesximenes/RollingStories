extends Popup

#Volta para a tela de rolar dados ao final de uma partida
func _on_YesButton_pressed():
	get_tree().change_scene("res://res/RollDicesScreen.tscn");
	pass # Replace with function body.

#Volta para a tela inicial ao final de uma partida
func _on_NoButton_pressed():
	get_tree().change_scene("res://res/TitleScreen.tscn");
	pass # Replace with function body.
