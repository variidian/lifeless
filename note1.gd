extends Area2D
@onready var note_dialogue = preload("res://note1.dialogue")
@onready var interactable: Area2D = $interactables
func _ready():
	interactable.interact = _on_interact
func _on_interact():
	if e.i == false:
		e.i = true
		DialogueManager.show_dialogue_balloon(note_dialogue, "start")
