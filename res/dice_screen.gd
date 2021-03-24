extends Control

var exitPopUp

# Called when the node enters the scene tree for the first time.
func _ready():
	exitPopUp = get_node("DiceScreenPopup")
	pass

# Revela a mensagem de sair de jogo
func _on_Exit_pressed():
	exitPopUp.show();
	pass # Replace with function body.
