extends Control

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Volta para a tela inicial, caso pressionado o botão
func _on_Exit_pressed():
	get_tree().change_scene("res://res/TitleScreen.tscn")
	pass # Replace with function body.

# Funções responsáveis por escolher o modo
func _on_RapidModeButton_pressed():
	get_node("Menu/Buttons/Modes/RapidMode/SelectIcon").show()
	get_node("Menu/Buttons/Modes/NormalMode/SelectIcon").hide()
	pass # Replace with function body.


func _on_NormalModeButton_pressed():
	get_node("Menu/Buttons/Modes/RapidMode/SelectIcon").hide()
	get_node("Menu/Buttons/Modes/NormalMode/SelectIcon").show()
	pass # Replace with function body.

# Função responsável por mudar a tela para a tela do jogo
func _on_StartButton_pressed():
	get_tree().change_scene("res://res/DiceScreen.tscn")
	pass # Replace with function body.
