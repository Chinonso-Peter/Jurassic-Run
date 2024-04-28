extends Node

var score: int 
var high_score: int 

const SAVEPATH = "user://save_data"

func _ready() -> void:
	high_score = 0
	load_high_score()

func update_score(points) -> void:
	score += points
	if score > high_score:
		high_score = score
		save_high_score()

func save_high_score() -> void:
	var file = FileAccess.open(SAVEPATH, FileAccess.WRITE)
	file.store_32(high_score)
	file = null
	
func load_high_score() -> void:
	var file = FileAccess.open(SAVEPATH, FileAccess.READ)
	if FileAccess.file_exists(SAVEPATH):
		high_score = file.get_32()

