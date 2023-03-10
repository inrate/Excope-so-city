extends Node2D

var speed = 100
var direction = Vector2.ZERO

func _process(delta):
	var voice_input = get_voice_input() # din funktion til at få stemmekommandoer
	if voice_input == "venstre":
		direction.x = -1
	elif voice_input == "højre":
		direction.x = 1
	elif voice_input == "op":
		direction.y = -1
	elif voice_input == "ned":
		direction.y = 1
	else:
		direction = Vector2.ZERO

	# Flyt spilleren baseret på retning og hastighed
	position += direction.normalized() * speed * delta

func get_voice_input():
	# implementer din stemmekommando-logik her
	pass

