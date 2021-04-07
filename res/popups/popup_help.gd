extends Popup

var page

# Called when the node enters the scene tree for the first time.
func _ready():
	page = 1
	pass # Replace with function body.

# Configura o número da pagina da tela de ajudas, bem como muda a cor dos botões 
# de avançar e voltar casos eles não possam ser utilizados
func _on_BackButton_pressed():
	match page:
		2:
			page -= 1
			get_node("Menu/Page/FirstPage").show()
			get_node("Menu/PageDisplay/Pag1").show()
			get_node("Menu/Page/SecondPage").hide()
			get_node("Menu/PageDisplay/Pag2").hide()
			get_node("Menu/PageDisplay/Pag2").hide()
			get_node("Menu/Page/VBoxContainer/BackButton").disabled = true
			get_node("Menu/Page/VBoxContainer/BackButton").modulate = Color(0.266667, 0.266667, 0.266667)
		3:
			page -= 1
			get_node("Menu/Page/SecondPage").show()
			get_node("Menu/PageDisplay/Pag2").show()
			get_node("Menu/Page/ThirdPage").hide()
			get_node("Menu/PageDisplay/Pag3").hide()
		4:
			page -= 1
			get_node("Menu/Page/ThirdPage").show()
			get_node("Menu/PageDisplay/Pag3").show()
			get_node("Menu/Page/ForthPage").hide()
			get_node("Menu/PageDisplay/Pag4").hide()
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
		3:
			page+=1
			get_node("Menu/Page/ThirdPage").hide()
			get_node("Menu/PageDisplay/Pag3").hide()
			get_node("Menu/Page/ForthPage").show()
			get_node("Menu/PageDisplay/Pag4").show()
			get_node("Menu/Page/VBoxContainer2/FowardButton").disabled = true
			get_node("Menu/Page/VBoxContainer2/FowardButton").modulate = Color(0.266667, 0.266667, 0.266667)
			
	pass # Replace with function body.

func _on_Exit_pressed():
	hide();
	pass # Replace with function body.
