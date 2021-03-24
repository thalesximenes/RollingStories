extends Button

export (Color, RGB) var mouse_out
export (Color, RGB) var mouse_over

func _ready():
	pass # Replace with function body.


# Efeito de Hover dos botões
func _on_NewGameButton_mouse_entered():
	get_node("Label").set("custom_colors/font_color",mouse_over)
	get_node("Label").set("custom_colors/font_color_shadow",mouse_out)
	pass # Replace with function body.


func _on_NewGameButton_mouse_exited():
	get_node("Label").set("custom_colors/font_color",mouse_out)
	get_node("Label").set("custom_colors/font_color_shadow",mouse_over)
	pass # Replace with function body.
