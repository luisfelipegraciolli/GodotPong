extends Node

@onready var game: Node2D = $"../.."


func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("restart"):
		get_tree().reload_current_scene()
	
	if Input.is_action_just_pressed("esc"):
		game.on_pause()
		
		
		
		
