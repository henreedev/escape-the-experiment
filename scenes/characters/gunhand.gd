extends Node2D


var gun : Gun

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if !gun && get_child_count(false) > 0:
		gun = get_child(0)
	if gun && Input.is_action_just_pressed("attack"):
		gun.fire()
