class_name Ball
extends Area2D

@onready var tile_map_layer_arena: TileMapLayer = $"../Map Design/TileMapLayer Arena"

const INITIAL_SPEED = 200
var speed = INITIAL_SPEED
var direction: Vector2 = Vector2.LEFT
@onready var initial_pos = position
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	speed += delta * 3
	position += speed * direction * delta
	
func reset():
	direction = Vector2.LEFT
	position = initial_pos
	speed = INITIAL_SPEED


func _on_body_entered(body: Node2D) -> void:
	if body is Paddle:
		if body.player_input_type == 1:
			direction = Vector2(1, randf() * 2 - 1).normalized()
		else:
			direction = Vector2(-1, randf() * 2 - 1).normalized()
	else:
		print(position.y)
		# Celling
		if position.y < -70:
			direction = (direction + Vector2(0, 1)).normalized()
		# Floor
		elif position.y > 70:
			direction = (direction + Vector2(0, -1)).normalized()
			
