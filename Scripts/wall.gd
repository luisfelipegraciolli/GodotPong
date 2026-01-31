extends Area2D

@export var score_label: Label
@onready var audio: AudioStreamPlayer2D = $AudioStreamPlayer2D

var score = 0

func _on_area_entered(area: Area2D) -> void:
	audio.pitch_scale =  randf_range(1, 1.5)
	audio.play()
	score+=1
	score_label.text = str(score)
	
	if area is Ball:
		area.reset()
		
