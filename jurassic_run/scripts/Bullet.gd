extends Area2D

var _velocity = Vector2(100, 0)
var speed = 2000

func _physics_process(delta: float) -> void:
	global_position.x += speed * delta
	kill_bullet()
	

func kill_bullet():
	if position.x > 3150:
		queue_free()
		




func _on_area_entered(area):
	queue_free()
