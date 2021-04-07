extends Popup

var ms = 5;
var s = 0;
var m = 1;
var textLabel;
var timer;
var popup;

# Called when the node enters the scene tree for the first time.
func _ready():
	textLabel = get_node ("HBoxContainer/VBoxContainer/HBoxContainer/Label");
	timer = get_node("HBoxContainer/VBoxContainer/HBoxContainer/Label/Timer")
	popup = get_node("Popup")
	pass # Replace with function body.


# Responsável pelo cronômetro
func _process(delta):	
	if (ms < 0 && s > 0):
		s -= 1;
		ms = 9;
		
	if (s <= 0 && m > 0 && ms < 0):
		ms = 9;
		s = 59;
		m -= 1;
		
	if (s < 10):
		if (ms%5 == 0 && m <= 0):
			textLabel.set_text("")
		else:
			textLabel.set_text("0"+str(m)+":0"+str(s))
	else: 
		textLabel.set_text("0"+str(m)+":"+str(s))
	pass

#Reseta o cronômetro ao mudar de dado
func _on_CheckButton_pressed():
	get_node("AudioStreamPlayer").play(0.60)
	ms = 5;
	s = 0;
	m = 1; 
	timer.stop();
	hide();
	popup.hide();
	pass # Replace with function body.

# Seta o tempo para decrescente
func _on_Timer_timeout():
	ms -= 1;
	pass # Replace with function body.

# Faz aparecer o popup de escrever
func _on_Button_pressed():
	if (GLOBAL.soundStatus):
		get_node("AudioStreamPlayer").play(0.60)
	if (popup.visible):
		popup.hide();
	else:
		popup.show();
		if (get_node("Popup/TextureRect/HBoxContainer/TextEdit").text == ""):
			get_node("Popup/TextureRect/HBoxContainer/TextEdit").text = "Escreva a história aqui"
	pass # Replace with function body.

