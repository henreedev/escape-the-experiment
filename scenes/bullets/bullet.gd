extends RigidBody2D

class_name Bullet

var speed := 150

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	if body.is_in_group("zombies"):
		body.queue_free()
		queue_free()


func _on_life_timer_timeout():
	queue_free()
