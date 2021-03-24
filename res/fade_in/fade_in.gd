extends ColorRect

signal fade_finished

# Executa a animação de fade in
func fade_in():
	$AnimationPlayer.play("fade_in")
	
# Emite um sinal quando a animação de fade in termina
func _on_AnimationPlayer_animation_finished(_anim_made):
	emit_signal("fade_finished")
