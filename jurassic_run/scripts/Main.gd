extends Node2D
@onready var score = $Score/ScoreLabel

func _ready() -> void:
	pass

	
func _physics_process(delta: float) -> void:
	score.text = "Score: " + str(GameStats.score)
	
