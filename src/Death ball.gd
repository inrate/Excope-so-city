extends Area2D

var d := 0.0
var radius := 150.0
var speed := 2.0



func _process(delta: float) -> void:
	d += delta
	
	position = Vector2(
		sin(d * speed) * radius,
		cos(d * speed) * radius
	) + Vector2(250, 250)


func _on_Death_ball_body_entered(body):
		if body is Player:
			get_tree().reload_current_scene()
			print ("voices in my head: HAHAHAHAHAHAHAHAHAHAHAHA")

