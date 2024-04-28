extends Node

@onready var high_score = $HighScore
@onready var score = $Score

func _ready() -> void:
	high_score.text = "High Score: " + str(GameStats.high_score)
	score.text = "Score: " + str(GameStats.score)
	
	
func _on_button_pressed():
	GameStats.score = 0 
	get_tree().change_scene_to_file("res://scenes/Main.tscn")



func _on_quit_button_pressed():
	get_tree().quit()
