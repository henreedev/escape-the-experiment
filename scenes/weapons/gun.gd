extends Sprite2D

class_name Gun

@export var bullet_scene : PackedScene
@export var pick_up_range := 20.0
var player : Player

# Called when the node enters the scene tree for the first time.
func _ready():
	player = get_tree().get_first_node_in_group("player")

func pick_up_if_in_range():
	if player.get_node("GunHand").get_child_count(false) == 0:
		if (position.distance_to(player.position) < pick_up_range): 
			reparent(player.get_node("GunHand"))
			position = Vector2.ZERO

func fire():
	var new_bullet : Bullet = bullet_scene.instantiate()
	new_bullet.position = global_position
	new_bullet.rotation_degrees = rotation_degrees
	
	new_bullet.linear_velocity = Vector2(1, 0).rotated(rotation) * new_bullet.speed 
	$Bullets.add_child(new_bullet)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	look_at(get_global_mouse_position())
