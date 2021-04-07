extends AudioStreamPlayer



func _process(delta):
	if (GLOBAL.musicStatus && !self.playing):
		self.playing = true;
	elif (!GLOBAL.musicStatus && self.playing):
		self.playing = false;
	pass
