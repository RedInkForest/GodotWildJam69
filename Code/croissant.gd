extends Area2D

@onready var character_label = $"../Label2"

func _on_body_entered(body):
	character_label.text = "MMM love a good croissant!\nNow how do I get out of here?"
	queue_free()
	SceneManager.change_scene("res://Scenes/end.tscn")


	
