extends Control

var randGenerate = RandomNumberGenerator.new()
var exitPopUp;
var dicePopup;
var dicePopupImage;
var guidePopup;
var continuePopup;
var timer;
var dices = [];
var selectedDices = 0;

# Called when the node enters the scene tree for the first time.
func _ready():
	# Gera uma seed aleatória
	randGenerate.randomize()	
	
	# Cria um path para cada um dos nodes onde ficarão as imagens dos botões
	for i in range (3):
		for j in range (3):
			dices.append("Dices/VBoxContainer/Row"+ str(i) +"/Column"+ str(j) +"/Button")
			pass
	
	exitPopUp = get_node("ModesPopUp");
	dicePopup = get_node("DiceSelectedGamePopup");
	dicePopupImage = get_node("DiceSelectedGamePopup/HBoxContainer/VBoxContainer/HBoxContainer2/VBoxContainer2/CenterContainer/Sprite")
	timer = get_node("DiceSelectedGamePopup/HBoxContainer/VBoxContainer/HBoxContainer/Label/Timer")
	guidePopup = get_node("NormalModeGuidePopup");
	continuePopup = get_node("ContinuePopup");
	
	# Mostra o Guia
	if (GLOBAL.normalGuide):
		guidePopup.show();
	
	GLOBAL.dicesRolled.clear();
	if (GLOBAL.dicesUsed.size() <= 45): roll_dices();

	set_images();
	pass

# Revela a mensagem de sair de jogo
func _on_Exit_pressed():
	exitPopUp.show();
	pass # Replace with function body.

# Escolhe os dados aleatoriamente
func roll_dices():
	var  dice;
	while (GLOBAL.dicesRolled.size() < 9):
		dice = randGenerate.randi_range(0,53);
		if !GLOBAL.dicesUsed.has(dice):
			GLOBAL.dicesRolled.append(dice);
			GLOBAL.dicesUsed.append(dice);
	pass

# Coloca as imagens nos dados
func set_images():
	for i in range (9):
		get_node(dices[i]+"/icon").set_texture(GLOBAL.dicesPath[GLOBAL.dicesRolled[i]])
		pass

# Abre a tela de seleção do dado
func _on_Button_pressed(extra_arg_0):
	dicePopupImage.set_texture(GLOBAL.selectedDicesPath[GLOBAL.dicesRolled[extra_arg_0]])

	get_node(dices[extra_arg_0]).disabled = true;
	get_node(dices[extra_arg_0]+"/icon").modulate = Color(Color(1, 1, 1, 0.25))
	
	# Mostra a segunda parte do Guia
	if (selectedDices == 0 && GLOBAL.normalGuide):
		guidePopup.get_node("TextureRect/VBoxContainer/CenterContainer/TextureRect").hide();
		guidePopup.get_node("TextureRect/VBoxContainer/CenterContainer/TextureRect2").show();
		guidePopup.show();
		GLOBAL.normalGuide = false;

	else:
		dicePopup.show();
		timer.start();
	pass

# Responsável por mostrar a tela de continuação, ao fim de 9 dados
func _on_DiceSelectedGamePopup_hide():
	selectedDices+=1;
	if (selectedDices >= 9):
		continuePopup.show();
		selectedDices = 0;	
	pass

# Reinicia a rodada
func _on_Settings_pressed():
	GLOBAL.dicesUsed.clear();
	get_tree().change_scene("res://res/RollDicesScreen.tscn")
	pass

# Inicia o time após a segunda aparição do Guia
func _on_NormalModeGuidePopup_hide():
	if (GLOBAL.normalGuide == false && dices.size() > 0):
		dicePopup.show();
		timer.start();
	pass
