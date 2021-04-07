extends Control

var randGenerate = RandomNumberGenerator.new()
var timer;
var dices = [];
var selectedDices = 0;
var ms = 5;
var s = 30;
var continuePopup;
var dicePath;
var guidePopup;
var textLabel;
var menuPopup;

# Called when the node enters the scene tree for the first time.
func _ready():
	randGenerate.randomize()
	dicePath = get_node("HBoxContainer/VBoxContainer/HBoxContainer2/VBoxContainer2/CenterContainer/Sprite")
	timer = get_node("HBoxContainer/VBoxContainer/HBoxContainer/Label/Timer")
	textLabel = get_node("HBoxContainer/VBoxContainer/HBoxContainer/Label")
	guidePopup = get_node("RapidModeGuidePopup")
	continuePopup = get_node("ContinuePopup")
	menuPopup = get_node ("ModesPopUp")
	
	# Mostra o guia do modo rápido
	if (GLOBAL.rapidGuide):
		guidePopup.show();
		GLOBAL.rapidGuide = false;
	else:
		timer.start();
	
	GLOBAL.dicesRolled.clear();
	if (GLOBAL.dicesUsed.size() <= 45): roll_dices();
	else:
		GLOBAL.dicesUsed.clear();
		roll_dices();
	
	set_images()
	
# Responsável por controlar o timer
func _process(delta):	
	if (ms < 0 && s > 0):
		s -= 1;
		ms = 9;

	if (s < 10):
		if (ms%5 == 0):
			textLabel.set_text("")
		else:
			textLabel.set_text("00:0"+str(s))
	else: 
		textLabel.set_text("00:"+str(s))
	pass

# Escolhe 9 dados aleatórios
func roll_dices():
	var  dice;
	while (GLOBAL.dicesRolled.size() < 9):
		dice = randGenerate.randi_range(0,53);
		if !GLOBAL.dicesUsed.has(dice):
			GLOBAL.dicesRolled.append(dice);
			GLOBAL.dicesUsed.append(dice);
	pass

# Mostra as imagens
func set_images():
	dicePath.set_texture(GLOBAL.selectedDicesPath[GLOBAL.dicesRolled[selectedDices]])
	pass

# Define o tempo no cronômetro de forma decrescente 
func _on_Timer_timeout():
	ms -= 1;
	pass # Replace with function body.
	
# Vai para o próximo dado
func _on_CheckButton_pressed():
	ms = 5;
	s = 30;
	selectedDices += 1;
	if (selectedDices >= 9):
		continuePopup.show();
		selectedDices = 0;
		timer.stop();
	else:	
		set_images();
	pass # Replace with function body.

# Inicia o timer quando se fecha a janela do modo rápido
func _on_RapidModeGuidePopup_hide():
	timer.start()
	pass # Replace with function body.

# Abre o Menu
func _on_TextureButton_pressed():
	menuPopup.show()
	timer.stop();
	pass # Replace with function body.

# Ao fechar o menu, retorna o timer
func _on_ModesPopUp_hide():
	if (GLOBAL.dicesRolled.size() > 0):
		timer.start();
	pass # Replace with function body.

# Reinicia a partida, escolhendo novos dados
func _on_TextureButton2_pressed():
	GLOBAL.dicesUsed.clear();
	get_tree().change_scene("res://res/RollDicesScreen.tscn")
	pass # Replace with function body.
