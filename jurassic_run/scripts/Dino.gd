extends Area2D

#Enemy speed 
var speed: = 1500

# Enemy animation 
@onready var anim = $AnimatedSprite2D

func _ready() -> void:
	anim.play()

func _physics_process(delta: float) -> void:
	#move enemy to the left
	global_position.x -= speed * delta 
	
	if position.x <= -500:
		queue_free()
 




func _on_area_entered(area):
	queue_free()
	GameStats.update_score(10)
 



func _on_body_entered(body):
	get_tree().change_scene_to_file("res://scenes/GameOver.tscn")
	
