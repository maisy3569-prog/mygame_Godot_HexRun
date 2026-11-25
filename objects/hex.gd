extends StaticBody2D

var hexinitial_scale = 6
var delta_scale = 0.8

func _physics_process(delta: float) -> void:
	scale.x = hexinitial_scale
	scale.y = hexinitial_scale
	#scale = Vector2(hexinitial_scale, hexinitial_scale)
	hexinitial_scale = hexinitial_scale - delta_scale * delta
	if hexinitial_scale <= 0.2:
		queue_free()


func _on_score_box_body_entered(body: Node2D) -> void:
	if body.is_in_group('Player'):
		Score.score += 1
		Score.update_score()
