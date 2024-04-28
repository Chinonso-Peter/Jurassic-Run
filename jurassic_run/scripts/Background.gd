extends Sprite2D

const VELOCITY: float = -15.0
var g_texture_width: float = 0
var game_difficulty_interval = 60

func _ready():
	g_texture_width = texture.get_size().x * scale.x
	
func _physics_process(_delta: float) -> void:
	position.x += VELOCITY
	_attempt_reposition()

func _attempt_reposition() -> void:
	if position.x < -g_texture_width:
		# Don't just reset position position texture width, otherwise there will be a gap 
		position.x += 2 * g_texture_width 

	
