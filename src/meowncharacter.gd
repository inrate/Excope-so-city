extends KinematicBody2D	

export var speed = 400.0

var velocity = Vector2.ZERO
func _process(delta):
	var direction = Vector2.ZERO
	if Input.get_action_strength("ui_right"):
		direction.x += 1
		
	if Input.get_action_strength("ui_left"):
		direction.x -= 1
	
	if Input.get_action_strength("ui_down"):
		direction.y += 1
	if Input.get_action_strength("ui_up"):
		direction.y -= 1
		
	if direction.length() > 1:
		direction = direction.normalized()
	
	position += direction * speed * delta
	

