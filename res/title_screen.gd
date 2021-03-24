extends Control

var exitPopUp
var rulesPopUp
var show = false
export (Color, RGB) var mouse_out
export (Color, RGB) var mouse_over

# Called when the node enters the scene tree for the first time.
func _ready():
	exitPopUp = get_node("MenuInicialPopup")
	rulesPopUp = get_node("PopupRules")
	pass

#Troca de cena quando o sinal de que o Fade In terminou chega
func _on_FadeIn_fade_finished():
	get_tree().change_scene("res://res/NewGame.tscn")
	
# Ativa o efeito de Fade_in
func _on_NewGameButton_pressed():
	rulesPopUp.hide()
	$FadeIn.show()
	$FadeIn.fade_in()
	pass # Replace with function body.

# Abre o menu para sair dojogo
func _on_Exit_pressed():
	exitPopUp.show()
	pass # Replace with function body.

# Abre o menu das regras
func _on_RulesButton_pressed():
	if (show == false):
		rulesPopUp.show()
		show = true
	else:
		rulesPopUp.hide()
		show = false
	pass # Replace with function body.

