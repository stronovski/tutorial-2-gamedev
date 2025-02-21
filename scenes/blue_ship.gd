extends CharacterBody2D

@export var gravity = 200.0
@export var walk_speed = 200
@export var jump_speed = -300

func _physics_process(delta):
	velocity.y += delta * gravity

	if is_on_floor() and Input.is_action_just_pressed('ui_up'):
		velocity.y = jump_speed

	if Input.is_action_pressed("ui_left"):
		velocity.x = -walk_speed
	elif Input.is_action_pressed("ui_right"):
		velocity.x =  walk_speed
	else:
		velocity.x = 0

	# "move_and_slide" already takes delta time into account.
	move_and_slide()
