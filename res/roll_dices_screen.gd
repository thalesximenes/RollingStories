extends Control

var animatedSprite;
var exitPopUp;

# Called when the node enters the scene tree for the first time.
func _ready():
	animatedSprite = 0;
	exitPopUp = get_node("ModesPopUp");
	pass # Replace with function body.

# Abre o menu
func _on_TextureButton_pressed():
	if (GLOBAL.soundStatus):
		get_node("AudioStreamPlayer").play(0.6)
	exitPopUp.show()
	pass # Replace with function body.

# Inicia a animação do dado
func _on_TextureRect_pressed():
	if (GLOBAL.soundStatus):
		get_node("AudioStreamPlayer2").play()
	get_node("Button/AnimatedSprite").play()
	pass # Replace with function body.

# Muda de cena depois da animação do dado
func _on_AnimatedSprite_animation_finished():
	if (animatedSprite == 2):
		$FadeIn.show();
		$FadeIn.fade_in();
	else: 
		animatedSprite += 1
	pass # Replace with function body.

func _on_FadeIn_fade_finished():
	if (GLOBAL.mode == 0):
		get_tree().change_scene("res://res/NormalModeScreen.tscn")
	elif (GLOBAL.mode == 1):
		get_tree().change_scene("res://res/RapidModeScreen.tscn")
	pass # Replace with function body.
