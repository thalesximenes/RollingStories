extends Control

#Mostra a sua história
func _on_Baixar_pressed():
	get_node("ReadStoryPopup").show();
	pass # Replace with function body.

#Volta ao início do jogo
func _on_Sair_pressed():
	get_tree().change_scene("res://res/TitleScreen.tscn");
	pass # Replace with function body.
