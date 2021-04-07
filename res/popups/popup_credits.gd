extends Popup

var page

# Called when the node enters the scene tree for the first time.
func _ready():
	page = 1
	pass # Replace with function body.

# Configura o número da pagina da tela de regras, bem como muda a cor dos botões 
# de avançar e voltar casos eles não possam ser utilizados
func _on_BackButton_pressed():
	match page:
		2:
			page -= 1
			get_node("Menu/Page/FirstPage").show()
			get_node("Menu/PageDisplay/Pag1").show()
			get_node("Menu/Page/SecondPage").hide()
			get_node("Menu/PageDisplay/Pag2").hide()
			get_node("Menu/Page/VBoxContainer/BackButton").disabled = true
			get_node("Menu/Page/VBoxContainer/BackButton").modulate = Color(1, 1, 1, 0)
		3:
			page -= 1
			get_node("Menu/Page/SecondPage").show()
			get_node("Menu/PageDisplay/Pag2").show()
			get_node("Menu/Page/ThirdPage").hide()
			get_node("Menu/PageDisplay/Pag3").hide()
			get_node("Menu/Page/VBoxContainer2/FowardButton").disabled = false
			get_node("Menu/Page/VBoxContainer2/FowardButton").modulate = Color(1, 1, 1)
	pass # Replace with function body.


func _on_FowardButton_pressed():
	match page:
		1:
			page +=1
			get_node("Menu/Page/FirstPage").hide()
			get_node("Menu/PageDisplay/Pag1").hide()
			get_node("Menu/Page/SecondPage").show()
			get_node("Menu/PageDisplay/Pag2").show()
			get_node("Menu/Page/VBoxContainer/BackButton").disabled = false
			get_node("Menu/Page/VBoxContainer/BackButton").modulate = Color(1, 1, 1)
		2:
			page+=1
			get_node("Menu/Page/SecondPage").hide()
			get_node("Menu/PageDisplay/Pag2").hide()
			get_node("Menu/Page/ThirdPage").show()
			get_node("Menu/PageDisplay/Pag3").show()
			get_node("Menu/Page/VBoxContainer2/FowardButton").disabled = true
			get_node("Menu/Page/VBoxContainer2/FowardButton").modulate = Color(1, 1, 1, 0)
	pass # Replace with function body.


func _on_Exit_pressed():
	get_parent()._on_CreditsButton_pressed();
	get_parent().get_node("Menu/CenterRow/VBoxContainer/Buttons/CreditsButton").pressed = false
	pass # Replace with function body.
