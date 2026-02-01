class_name Ball
extends Area2D
@onready var collision_shape_2d: CollisionShape2D = $CollisionShape2D
@onready var tile_map_layer_arena: TileMapLayer = $"../Map Design/TileMapLayer Arena"
@onready var hit_sound: AudioStreamPlayer2D = $HitSound


const INITIAL_SPEED: float = 200
@export var speed: float = INITIAL_SPEED
var direction: Vector2 = Vector2.LEFT

@onready var initial_pos: Vector2 = position

func _process(delta: float) -> void:
	speed += delta * 3
	position += speed * direction * delta
	
func reset() -> void:
	direction = Vector2.LEFT
	position = initial_pos
	speed = INITIAL_SPEED


func _on_body_entered(body: Node2D) -> void:
	hit_sound.play()
	hit_sound.pitch_scale = randf_range(0.75, 2)
	if body is Paddle:
		if body.input_type == body.PlayerInput.PLAYER_ONE:
			direction = Vector2(1, randf() * 2 - 1).normalized()
		else:
			direction = Vector2(-1, randf() * 2 - 1).normalized()
	else:
		# Celling
		if position.y < -70:
			direction = (direction + Vector2(0, 1)).normalized()
		# Floor
		elif position.y > 70:
			direction = (direction + Vector2(0, -1)).normalized()
		
			
