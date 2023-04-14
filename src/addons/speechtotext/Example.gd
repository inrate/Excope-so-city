extends Node2D

onready var speech_to_text = $SpeechToText

func _ready():
	speech_to_text.init()
	while not speech_to_text.can_speak():
		yield(get_tree(), "idle_frame")
	print("godot-speech-to-text plugin loaded")

func _process(_delta):
	if Input.is_action_just_pressed("ui_accept"):
		if speech_to_text.can_speak():
			print("Speech recognition started")
			speech_to_text.start()
	if Input.is_action_just_released("ui_accept"):
		if speech_to_text.am_speaking():
			print("Speech recognition stopped")
			var result = speech_to_text.stop_and_get_result()
			if result is GDScriptFunctionState:
				result = yield(result, "completed")
			print("Recognized: " + result)
			
			if result.find("right") >= 0:
				Input.action_press("ui_right")
				yield(get_tree().create_timer(0.2), "timeout")
				Input.action_release("ui_right")
				print("Neko: yes master")
				
			if result.find("right one") >= 0:
				Input.action_press("ui_right")
				yield(get_tree().create_timer(0.5), "timeout")
				Input.action_release("ui_right")
			
				
				
			if result.find("back") >= 0:
				Input.action_press("ui_left")
				yield(get_tree().create_timer(0.2), "timeout")
				Input.action_release("ui_left")
				
			if result.find("back one") >= 0:
				Input.action_press("ui_left")
				yield(get_tree().create_timer(0.5), "timeout")
				Input.action_release("ui_left")
				
			if result.find("north") >= 0:
				Input.action_press("ui_up")
				yield(get_tree().create_timer(0.2), "timeout")
				Input.action_release("ui_up")
				
			if result.find("north one") >= 0:
				Input.action_press("ui_up")
				yield(get_tree().create_timer(0.5), "timeout")
				Input.action_release("ui_up")
				
			if result.find("down") >= 0:
				Input.action_press("ui_down")
				yield(get_tree().create_timer(0.2), "timeout")
				Input.action_release("ui_down")
				
			if result.find("down one") >= 0:
				Input.action_press("ui_down")
				yield(get_tree().create_timer(0.2), "timeout")
				Input.action_release("ui_down")
