extends CharacterBody2D

class_name Player

const SPEED = 100.0

func _process(delta):
	if Input.is_action_just_pressed("pickup"):
		for N : Gun in get_tree().get_nodes_in_group("guns"):
			N.pick_up_if_in_range()

func _physics_process(delta):
	velocity = Vector2.ZERO # The player's movement vector.
	if Input.is_action_pressed("move_right"):
		velocity.x += 1
	if Input.is_action_pressed("move_left"):
		velocity.x -= 1
	if Input.is_action_pressed("move_down"):
		velocity.y += 1
	if Input.is_action_pressed("move_up"):
		velocity.y -= 1

	if velocity.length() > 0:
		velocity = velocity.normalized() * SPEED
	move_and_slide()
	

