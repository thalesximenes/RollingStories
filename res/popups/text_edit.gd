extends TextEdit

# Responsável por limpar a caixa de texto quando clicar
func _on_TextEdit_focus_entered():
	if (self.text == "Escreva a história aqui"):
		self.text = "";
		pass
	pass

# Adiciona o texto para ser apresentado depois
func _on_TextureButton_pressed():
	GLOBAL.exportText += self.text + "\n\n"
	self.text = ""
	pass # Replace with function body.

# Caso a caixa de texto esteja vazia, preenche ela com o texto placeholder
func _on_TextEdit_focus_exited():
	if (self.text == ""):
		self.text = "Escreva a história aqui";
		pass
	pass # Replace with function body.
