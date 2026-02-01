class_name Paddle
extends CharacterBody2D

enum PlayerInput {PLAYER_ONE, PLAYER_TWO}
@export var input_type: PlayerInput

const SPEED = 300.0
const JUMP_VELOCITY = -400.0


func _physics_process(delta: float) -> void:
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction: float
	
	match input_type:
		PlayerInput.PLAYER_ONE:
			direction = Input.get_axis("p1_up", "p1_down")
		PlayerInput.PLAYER_TWO:
			direction = Input.get_axis("p2_up", "p2_down")
		
	if direction:
		velocity.y = direction * SPEED
	else:
		velocity.y = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
