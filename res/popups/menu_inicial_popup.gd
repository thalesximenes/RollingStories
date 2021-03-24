extends Popup

var noButton
var exitPopup

func _ready():
	exitPopup = get_node(".")
	noButton = get_node("HBoxContainer2/VBoxContainer/HBoxContainer/NoButton")
	pass # Replace with function body.

# Fecha a aplicação quando o botão Sim é pressionado
func _on_YesButton_pressed():
	get_tree().quit()
	pass # Replace with function body.

# Fecha a mensagem de sair do jogo
func _on_NoButton_pressed():
	exitPopup.hide()
	
	pass # Replace with function body.
