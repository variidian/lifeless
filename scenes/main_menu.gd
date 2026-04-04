extends Node2D
@onready var startb = $start
@onready var creditsb = $credits
@onready var exitb = $exit
@onready var anim = $AnimationPlayer
var credits_showing = false
func _ready() -> void:
	startb.grab_focus()
func _process(_delta: float) -> void:
	if startb.has_focus():
		startb.size.x = 1140
		startb.position.x = 1361
	if not startb.has_focus():
		startb.size.x = 862
		startb.position.x = 1639

	if creditsb.has_focus():
		creditsb.size.x = 1140
		creditsb.position.x = 1361
	if not creditsb.has_focus():
		creditsb.size.x = 862
		creditsb.position.x = 1639

	if exitb.has_focus():
		exitb.size.x = 1140
		exitb.position.x = 1361
	if not exitb.has_focus():
		exitb.size.x = 862
		exitb.position.x = 1639


func _on_exit_pressed() -> void:
	get_tree().quit()


func _on_credits_pressed() -> void:
	if not credits_showing:
		anim.play("credits")
		credits_showing = true
	elif credits_showing:
		anim.play_backwards("credits")
		credits_showing = false


func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/scene_1.tscn")
