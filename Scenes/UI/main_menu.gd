extends Control

@export var main_game_scene: PackedScene
@export var controls_scene: PackedScene

func _on_play_pressed() -> void:
	get_tree().change_scene_to_packed(main_game_scene)
func _on_exit_pressed() -> void:
	get_tree().quit()

func _on_controls_pressed() -> void:
	get_tree().change_scene_to_packed(controls_scene)
