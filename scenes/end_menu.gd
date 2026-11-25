extends Control

func _ready() -> void:
	visible = false

func _on_restart_button_pressed() -> void:
	visible = false
	Score.score = 0
	Score.update_score()
	get_tree().reload_current_scene()

func _on_back_button_pressed() -> void:
	visible = false
	Score.score = 0
	Score.update_score()
	get_tree().change_scene_to_file("res://scenes/mainmeun.tscn")

func _on_quit_button_pressed() -> void:
	get_tree().quit()
