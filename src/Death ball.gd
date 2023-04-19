extends Area2D

export var speed = 45

func _process(delta):
	rotation_degrees += speed * delta



func _on_Death_ball_body_entered(body):
		if body is Player:
			get_tree().reload_current_scene()
			print ("voices in my head: HAHAHAHAHAHAHAHAHAHAHAHA")

