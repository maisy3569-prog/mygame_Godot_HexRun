extends Timer

var hex_scene = preload("res://objects/hex.tscn")
var rng = RandomNumberGenerator.new()

func _ready() -> void:
	call_deferred('spawn_hex')

#func _physics_process(_delta: float) -> void:
	#if Input.is_action_just_pressed("ui_end"):
		#spawn_hex()

func spawn_hex():
	var hex_node = hex_scene.instantiate()
	hex_node.rotation = PI/6 * rng.randi_range(0,11)
	get_tree().current_scene.add_child(hex_node)


func _on_timeout() -> void:
	spawn_hex()
