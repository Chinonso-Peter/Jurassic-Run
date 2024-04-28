extends Control

@onready var high_score = $HighScore
@onready var score = $Score

# Called when the node enters the scene tree for the first time.
func _ready():
	high_score.text = "High Score: " + str(GameStats.high_score)
	score.text = "Score: " + str(GameStats.score)
	GameStats.score = 0
	$bg_music.play()
	
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_play_button_pressed():
	get_tree().change_scene_to_file("res://scenes/Main.tscn")
	
	
func _on_quit_button_pressed():
	get_tree().quit()
