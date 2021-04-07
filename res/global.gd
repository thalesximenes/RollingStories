extends Node

#Guarda todas as variáveis globais
var exportText = ""
var mode = 0;
var normalGuide = true
var rapidGuide = true
var musicStatus = true
var soundStatus = true
var pattern = -1
var dicesRolled = [];
var dicesUsed = [];
var dicesPath = [
	preload("res://res/Assets/Dices/Dados finalizados-01.png"),
	preload("res://res/Assets/Dices/Dados finalizados-02.png"),
	preload("res://res/Assets/Dices/Dados finalizados-03.png"),
	preload("res://res/Assets/Dices/Dados finalizados-04.png"), 
	preload("res://res/Assets/Dices/Dados finalizados-05.png"), 
	preload("res://res/Assets/Dices/Dados finalizados-06.png"), 
	preload("res://res/Assets/Dices/Dados finalizados-07.png"), 
	preload("res://res/Assets/Dices/Dados finalizados-08.png"), 
	preload("res://res/Assets/Dices/Dados finalizados-09.png"), 
	preload("res://res/Assets/Dices/Dados finalizados-10.png"), 
	preload("res://res/Assets/Dices/Dados finalizados-11.png"), 
	preload("res://res/Assets/Dices/Dados finalizados-12.png"), 
	preload("res://res/Assets/Dices/Dados finalizados-13.png"), 
	preload("res://res/Assets/Dices/Dados finalizados-14.png"), 
	preload("res://res/Assets/Dices/Dados finalizados-15.png"), 
	preload("res://res/Assets/Dices/Dados finalizados-16.png"), 
	preload("res://res/Assets/Dices/Dados finalizados-17.png"), 
	preload("res://res/Assets/Dices/Dados finalizados-18.png"), 
	preload("res://res/Assets/Dices/Dados finalizados-19.png"), 
	preload("res://res/Assets/Dices/Dados finalizados-20.png"), 
	preload("res://res/Assets/Dices/Dados finalizados-21.png"), 
	preload("res://res/Assets/Dices/Dados finalizados-22.png"), 
	preload("res://res/Assets/Dices/Dados finalizados-23.png"), 
	preload("res://res/Assets/Dices/Dados finalizados-24.png"), 
	preload("res://res/Assets/Dices/Dados finalizados-25.png"), 
	preload("res://res/Assets/Dices/Dados finalizados-26.png"), 
	preload("res://res/Assets/Dices/Dados finalizados-27.png"), 
	preload("res://res/Assets/Dices/Dados finalizados-28.png"), 
	preload("res://res/Assets/Dices/Dados finalizados-29.png"), 
	preload("res://res/Assets/Dices/Dados finalizados-30.png"), 
	preload("res://res/Assets/Dices/Dados finalizados-31.png"), 
	preload("res://res/Assets/Dices/Dados finalizados-32.png"), 
	preload("res://res/Assets/Dices/Dados finalizados-33.png"), 
	preload("res://res/Assets/Dices/Dados finalizados-34.png"), 
	preload("res://res/Assets/Dices/Dados finalizados-35.png"), 
	preload("res://res/Assets/Dices/Dados finalizados-36.png"), 
	preload("res://res/Assets/Dices/Dados finalizados-37.png"), 
	preload("res://res/Assets/Dices/Dados finalizados-38.png"), 
	preload("res://res/Assets/Dices/Dados finalizados-39.png"), 
	preload("res://res/Assets/Dices/Dados finalizados-40.png"), 
	preload("res://res/Assets/Dices/Dados finalizados-41.png"), 
	preload("res://res/Assets/Dices/Dados finalizados-42.png"), 
	preload("res://res/Assets/Dices/Dados finalizados-43.png"), 
	preload("res://res/Assets/Dices/Dados finalizados-44.png"), 
	preload("res://res/Assets/Dices/Dados finalizados-45.png"), 
	preload("res://res/Assets/Dices/Dados finalizados-46.png"), 
	preload("res://res/Assets/Dices/Dados finalizados-47.png"), 
	preload("res://res/Assets/Dices/Dados finalizados-48.png"), 
	preload("res://res/Assets/Dices/Dados finalizados-49.png"), 
	preload("res://res/Assets/Dices/Dados finalizados-50.png"), 
	preload("res://res/Assets/Dices/Dados finalizados-51.png"), 
	preload("res://res/Assets/Dices/Dados finalizados-52.png"), 
	preload("res://res/Assets/Dices/Dados finalizados-53.png"), 
	preload("res://res/Assets/Dices/Dados finalizados-54.png"), 
];

var selectedDicesPath = [
	preload("res://res/Assets/SelectedDices/Dados finalizados-01.png"),
	preload("res://res/Assets/SelectedDices/Dados finalizados-02.png"),
	preload("res://res/Assets/SelectedDices/Dados finalizados-03.png"),
	preload("res://res/Assets/SelectedDices/Dados finalizados-04.png"), 
	preload("res://res/Assets/SelectedDices/Dados finalizados-05.png"), 
	preload("res://res/Assets/SelectedDices/Dados finalizados-06.png"), 
	preload("res://res/Assets/SelectedDices/Dados finalizados-07.png"), 
	preload("res://res/Assets/SelectedDices/Dados finalizados-08.png"), 
	preload("res://res/Assets/SelectedDices/Dados finalizados-09.png"), 
	preload("res://res/Assets/SelectedDices/Dados finalizados-10.png"), 
	preload("res://res/Assets/SelectedDices/Dados finalizados-11.png"), 
	preload("res://res/Assets/SelectedDices/Dados finalizados-12.png"), 
	preload("res://res/Assets/SelectedDices/Dados finalizados-13.png"), 
	preload("res://res/Assets/SelectedDices/Dados finalizados-14.png"), 
	preload("res://res/Assets/SelectedDices/Dados finalizados-15.png"), 
	preload("res://res/Assets/SelectedDices/Dados finalizados-16.png"), 
	preload("res://res/Assets/SelectedDices/Dados finalizados-17.png"), 
	preload("res://res/Assets/SelectedDices/Dados finalizados-18.png"), 
	preload("res://res/Assets/SelectedDices/Dados finalizados-19.png"), 
	preload("res://res/Assets/SelectedDices/Dados finalizados-20.png"), 
	preload("res://res/Assets/SelectedDices/Dados finalizados-21.png"), 
	preload("res://res/Assets/SelectedDices/Dados finalizados-22.png"), 
	preload("res://res/Assets/SelectedDices/Dados finalizados-23.png"), 
	preload("res://res/Assets/SelectedDices/Dados finalizados-24.png"), 
	preload("res://res/Assets/SelectedDices/Dados finalizados-25.png"), 
	preload("res://res/Assets/SelectedDices/Dados finalizados-26.png"), 
	preload("res://res/Assets/SelectedDices/Dados finalizados-27.png"), 
	preload("res://res/Assets/SelectedDices/Dados finalizados-28.png"), 
	preload("res://res/Assets/SelectedDices/Dados finalizados-29.png"), 
	preload("res://res/Assets/SelectedDices/Dados finalizados-30.png"), 
	preload("res://res/Assets/SelectedDices/Dados finalizados-31.png"), 
	preload("res://res/Assets/SelectedDices/Dados finalizados-32.png"), 
	preload("res://res/Assets/SelectedDices/Dados finalizados-33.png"), 
	preload("res://res/Assets/SelectedDices/Dados finalizados-34.png"), 
	preload("res://res/Assets/SelectedDices/Dados finalizados-35.png"), 
	preload("res://res/Assets/SelectedDices/Dados finalizados-36.png"), 
	preload("res://res/Assets/SelectedDices/Dados finalizados-37.png"), 
	preload("res://res/Assets/SelectedDices/Dados finalizados-38.png"), 
	preload("res://res/Assets/SelectedDices/Dados finalizados-39.png"), 
	preload("res://res/Assets/SelectedDices/Dados finalizados-40.png"), 
	preload("res://res/Assets/SelectedDices/Dados finalizados-41.png"), 
	preload("res://res/Assets/SelectedDices/Dados finalizados-42.png"), 
	preload("res://res/Assets/SelectedDices/Dados finalizados-43.png"), 
	preload("res://res/Assets/SelectedDices/Dados finalizados-44.png"), 
	preload("res://res/Assets/SelectedDices/Dados finalizados-45.png"), 
	preload("res://res/Assets/SelectedDices/Dados finalizados-46.png"), 
	preload("res://res/Assets/SelectedDices/Dados finalizados-47.png"), 
	preload("res://res/Assets/SelectedDices/Dados finalizados-48.png"), 
	preload("res://res/Assets/SelectedDices/Dados finalizados-49.png"), 
	preload("res://res/Assets/SelectedDices/Dados finalizados-50.png"), 
	preload("res://res/Assets/SelectedDices/Dados finalizados-51.png"), 
	preload("res://res/Assets/SelectedDices/Dados finalizados-52.png"), 
	preload("res://res/Assets/SelectedDices/Dados finalizados-53.png"), 
	preload("res://res/Assets/SelectedDices/Dados finalizados-54.png"), 
];

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
