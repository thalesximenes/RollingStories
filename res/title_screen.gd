extends Control

var rulesPopUp
var creditsPopUp
var menuPopUp
var showCredits = false
var showRules = false;

# Called when the node enters the scene tree for the first time.
func _ready():
	rulesPopUp = get_node("PopupRules")
	creditsPopUp = get_node("PopupCredits")
	GLOBAL.dicesUsed.clear();
	GLOBAL.exportText = "";
	pass

#Troca de cena quando o sinal de que o Fade In terminou chega
func _on_FadeIn_fade_finished():
	get_tree().change_scene("res://res/NewGame.tscn")
	
# Ativa o efeito de Fade_in
func _on_NewGameButton_pressed():
	rulesPopUp.hide()
	creditsPopUp.hide()
	$FadeIn.show()
	$FadeIn.fade_in()
	pass # Replace with function body.


# Abre o menu das regras
func _on_RulesButton_pressed():
	if (showRules == false):
		rulesPopUp.show()
		creditsPopUp.hide()
		get_node("Menu/CenterRow/VBoxContainer/Buttons/CreditsButton").pressed = false
		showCredits = false
		showRules = true
	else:
		rulesPopUp.hide()
		showRules = false
	pass # Replace with function body.

# Abre o menu de créditos
func _on_CreditsButton_pressed():
	if (showCredits == false):
		creditsPopUp.show()
		rulesPopUp.hide()
		get_node("Menu/CenterRow/VBoxContainer/Buttons/RulesButton").pressed = false
		showRules = false
		showCredits = true
	else:
		creditsPopUp.hide()
		showCredits = false
	pass # Replace with function body.
