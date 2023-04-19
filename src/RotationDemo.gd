extends Node2D
export var speed = 45

func _process(delta):
	rotation_degrees += speed * delta
