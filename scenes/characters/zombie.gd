extends CharacterBody2D


const SPEED = 60.0
var player : Player
func _ready():
	player = get_tree().get_nodes_in_group("player")[0]

func _physics_process(delta):
	velocity = (player.position - position).normalized() * SPEED

	move_and_slide()
	

