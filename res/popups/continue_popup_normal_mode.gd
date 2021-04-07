extends Popup


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

#Volta para a tela de rolar dados ao final de uma partida
func _on_YesButton_pressed():
	get_tree().change_scene("res://res/RollDicesScreen.tscn");
	pass # Replace with function body.

#Vai para a tela de fim de jogo
func _on_NoButton_pressed():
	get_tree().change_scene("res://res/EndGameScreen.tscn");
	pass # Replace with function body.

