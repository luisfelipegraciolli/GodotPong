extends Area2D

@export var score_label: Label

var score = 0

func _on_area_entered(area: Area2D) -> void:
	score+=1
	score_label.text = str(score)
	if area is Ball:
		area.reset()
		
