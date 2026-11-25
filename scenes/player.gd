extends CharacterBody2D

#
var direction = Vector2.ZERO
var speed = 10

func _physics_process(_delta):
	direction = Vector2.ZERO
	if Input.is_action_pressed('ui_right'):
		direction.x = 1
	if Input.is_action_pressed('ui_left'):
		direction.x = -1
	if Input.is_action_pressed('ui_up'):
		direction.y = -1
	if Input.is_action_pressed('ui_down'):
		direction.y = 1

	direction = direction.normalized()
	move_and_collide(direction * speed)

	#if get_last_slide_collision() != null:
		#var collider = get_last_slide_collision().get_collider()
		#if collider.is_in_group('hex'):
			#queue_free()

func _on_hitbox_body_entered(body: Node2D) -> void:
	if Score.score > Score.max_score:
		Score.max_score = Score.score
	if body.is_in_group('Hex'):
		EndMenu.visible = true
		queue_free()

	


func _on_touch_screen_button_pressed() -> void:
	pass # Replace with function body.
