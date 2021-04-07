extends TextureRect

var randGenerate = RandomNumberGenerator.new()

# Responsável por mudar o padrão da tela 
func _ready():
	if (GLOBAL.pattern < 0):
		randGenerate.randomize()
		GLOBAL.pattern = randGenerate.randi_range(0,2)
	
	match GLOBAL.pattern:
		0:
			self.set_texture(preload("res://res/Assets/pattern background 1.png"))
			pass
		1:
			self.set_texture(preload("res://res/Assets/pattern background 2.png"))
			pass
		2: 
			self.set_texture(preload("res://res/Assets/pattern background 3.png"))
			pass
