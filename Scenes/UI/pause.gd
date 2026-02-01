extends Control

@onready var main: Node2D = $"../"

func _on_menu_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/UI/main_menu.tscn")
	Engine.time_scale = 1


func _on_return_pressed() -> void:
	main.on_pause()
