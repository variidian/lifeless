extends Area2D
@onready var note_dialogue = preload("res://note_dialogue.dialogue")
@onready var interactable: Area2D = $interactables
func _ready():
	interactable.interact = _on_interact
func _on_interact():
	if e.i == false:
		DialogueManager.show_dialogue_balloon(note_dialogue, "yes")
		e.i = true
