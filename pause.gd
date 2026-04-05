extends Control
@onready var unpause = $Panel/unpause
@onready var quit = $Panel/start
@onready var restart = $Panel/start2
@onready var anim = $AnimationPlayer
var paused = false
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("quit"):
		if not paused:
			anim.play("pause")
			paused = true
			get_tree().paused = true
			unpause.grab_focus()
		elif paused:
			anim.play_backwards("pause")
			get_tree().paused = false
			paused = false

func _on_unpause_pressed() -> void:
	if paused:
		anim.play_backwards("pause")
		get_tree().paused = false
		paused = false

func _on_start_pressed() -> void:
	get_tree().quit()

func _on_start_2_pressed() -> void:
	if paused: 
		anim.play_backwards("pause")
		get_tree().paused = false
		paused = false
		get_tree().change_scene_to_file("res://scenes/scene_1.tscn")
		
