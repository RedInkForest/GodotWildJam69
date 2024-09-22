extends Node

@onready var ScreenFadePlayer := $Overlay/ScreenFade/AnimationPlayer
func change_scene(path: String = "res://Scenes/Menu.tscn", fast: bool = true):
	get_window().gui_disable_input = true
	
	ScreenFadePlayer.play("fade")
	ScreenFadePlayer.speed_scale = int(fast) + 1
	await get_tree().create_timer(2.5 - int(fast) * 2).timeout
	
	get_tree().change_scene_to_file(path)
	
	ScreenFadePlayer.play_backwards("fade")
	await get_tree().create_timer(1).timeout
	
	get_window().gui_disable_input = false

