extends Popup

var page

# Called when the node enters the scene tree for the first time.
func _ready():
	page = 1
	pass # Replace with function body.


"FirstPage/Page/Label"

# Configura o número da pagina da tela de regras, bem como muda a cor dos botões 
# de avançar e voltar casos eles não possam ser utilizados
func _on_BackButton_pressed():
	match page:
		2:
			page -= 1
			get_node("Menu/FirstPage").show()
			get_node("Menu/SecondPage").hide()
			get_node("Menu/Page/BackButton").modulate = Color(0.266667, 0.266667, 0.266667)
		3:
			page -= 1
			get_node("Menu/SecondPage").show()
			get_node("Menu/ThirdPage").hide()
			get_node("Menu/Page/FowardButton").modulate = Color(1, 1, 1)
	get_node("Menu/Page/Label").text = "0" + String(page)
	pass # Replace with function body.


func _on_FowardButton_pressed():
	match page:
		1:
			page += 1
			get_node("Menu/FirstPage").hide()
			get_node("Menu/SecondPage").show()
			get_node("Menu/Page/BackButton").modulate = Color(1, 1, 1)
		2:
			page += 1
			get_node("Menu/SecondPage").hide()
			get_node("Menu/ThirdPage").show()
			get_node("Menu/Page/FowardButton").modulate = Color(0.266667, 0.266667, 0.266667)
			
	get_node("Menu/Page/Label").text = "0" + String(page)
	pass # Replace with function body.
