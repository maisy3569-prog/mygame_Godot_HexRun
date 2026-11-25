extends Control
#
var score = 0
var max_score = 0

func _ready() -> void:
	update_score()

func update_score():
	$Label.text = str(score)
