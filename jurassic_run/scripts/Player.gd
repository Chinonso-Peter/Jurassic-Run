extends CharacterBody2D

const JUMP_FORCE: int = -55
@export var GRAVITY: float = 6.0
var _velocity = Vector2.ZERO
var can_jump = true
@onready var ap = $AnimationPlayer
const bullet_path = preload("res://scenes/Bullet.tscn")




func _physics_process(delta: float) -> void:
	_velocity.y += GRAVITY
	
	# PLayer jump
	if Input.is_action_just_pressed("ui_up") and can_jump:
		_velocity.y = JUMP_FORCE
		can_jump = false
		ap.play("jump_animation")
	
		
	if Input.is_action_just_pressed("ui_select"):
		$GunSound.play()
		shoot()
	var _velocity = move_and_collide(_velocity)


func shoot() -> void:
	var bullet = bullet_path.instantiate()
	
	get_parent().add_child(bullet)
	bullet.position = $Marker2D.global_position
	

func _on_area_2d_area_entered(area):
		can_jump = true
		ap.play("run_animation")
		


