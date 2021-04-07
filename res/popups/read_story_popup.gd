extends Popup

# Called when the node enters the scene tree for the first time.

# Define o texto que irá aparecer na história
func _ready():
	if (GLOBAL.exportText != ""):
		get_node("VBoxContainer/RichTextLabel").text = GLOBAL.exportText
	pass # Replace with function body.

# Fecha a tela
func _on_TextureButton_pressed():
	self.hide();
	pass # Replace with function body.
