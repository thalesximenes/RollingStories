extends Popup

# Volta para a tela inicial
func _on_YesButton_pressed():
	get_tree().change_scene("res://res/TitleScreen.tscn");
	pass # Replace with function body.

# Fecha o popup
func _on_NoButton_pressed():
	self.hide();
	pass # Replace with function body.
