extends Area2D

var con = false


func _on_body_entered(body):
	if con == false:
		SceneManager.change_scene("res://Scenes/level_2.tscn")
	con = true
