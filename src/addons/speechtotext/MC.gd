extends KinematicBody2D

var speed = 400

func get_input(command):
	var input_direction = Input.get_vector("left", "right", "up", "down")
	velocity = input_direction * speed
	if command == "forward":
		velocity.y = -speed
	elif command == "back":
		velocity.y = speed
	elif command == "left":
		velocity.x = -speed
	elif command == "right":
		velocity.x = speed

	


	   
func _physics_process(delta):
	get_input()
	move_and_slide()

