extends Node

func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("restart"):
		get_tree().reload_current_scene()
	
	if Input.is_action_just_pressed("menu"):
		get_tree().change_scene_to_file("res://Scenes/UI/main_menu.tscn")
