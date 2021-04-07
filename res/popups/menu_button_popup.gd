extends Popup

var helpPopup
var menuButtonPopup
var leavePopup


func _ready():
	menuButtonPopup = get_node(".")
	helpPopup = get_node("PopupHelp")
	leavePopup = get_node("LeavePopup")
	pass # Replace with function body.

# fecha o menu
func _on_Button_pressed():
	menuButtonPopup.hide()
	pass # Replace with function body.

# abre a confirmação de sair do jogo
func _on_LeaveButton_pressed():
	leavePopup.show();
	pass # Replace with function body.

# mostra a ajuda
func _on_HelpButton_pressed():
	helpPopup.show();
	pass # Replace with function body.
