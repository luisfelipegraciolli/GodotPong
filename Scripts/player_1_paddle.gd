extends CharacterBody2D


@export var player_input_type: int

const SPEED = 300.0
const JUMP_VELOCITY = -400.0


func _physics_process(delta: float) -> void:
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction: float
	
	if player_input_type == 1:
		direction = Input.get_axis("p1_up", "p1_down")
	if player_input_type == 2:
		direction = Input.get_axis("p2_up", "p2_down")
		
	if direction:
		velocity.y = direction * SPEED
	else:
		velocity.y = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
