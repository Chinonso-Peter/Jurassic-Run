extends Node2D

#var spawn_timer = 4
var enemy_scene = [preload("res://scenes/Enemies/Cactus.tscn"), preload("res://scenes/Enemies/Dino.tscn")]


func _ready() -> void:
	# Setup a timer to spawn enemies 
	$Timer.connect("timeout", self._on_timer_timeout)
	$Timer.start(randf_range(1, 1)) # Set the initial timer duration in seconds 
	#spawn_enemies()
	
func _on_timer_timeout() -> void:
	# Spawn enemies 
	spawn_enemies()
	# Restart timer at different time intervals
	$Timer.start(randf_range(1, 1)) # restart the timer at different intervals 

func spawn_enemies() -> void:
	# Instance the dino scene 
	var random_enemy_scene = enemy_scene[randi() % enemy_scene.size()]
	var enemy_instance = random_enemy_scene.instantiate()
	
	# Set the position of the dino 
	enemy_instance.position = Vector2(round(1800), round(650))   
	
	
	# Add dino to the main scene 
	add_child(enemy_instance)
	
	

