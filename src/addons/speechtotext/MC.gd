extends KinematicBody2D

const MAX_SPEED=200
var FM = Sprite


#z = shoot
#x = bombe
#shift = slowdown / focusmode

	
	
var velocity = Vector2.ZERO


func _physics_process(delta):
	var input_vector=Vector2.ZERO
	input_vector.x=Input.get_action_strength("ui_right")-Input.get_action_strength("ui_left")
	input_vector.y=Input.get_action_strength("ui_down")-Input.get_action_strength("ui_up")
	input_vector = input_vector.normalized()
	
	
	if input_vector!=Vector2.ZERO:
		velocity=velocity.move_toward(input_vector*MAX_SPEED,MAX_SPEED)
	else:
		velocity=velocity.move_toward(Vector2.ZERO,MAX_SPEED)
	
	velocity=(move_and_slide(velocity)*delta)


func _on_Area2D_body_entered(body):
	pass # Replace with function body.
