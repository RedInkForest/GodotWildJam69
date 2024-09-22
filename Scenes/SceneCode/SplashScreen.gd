extends MarginContainer



func _physics_process(delta):
	$TextureRect.modulate = Color(1,1,1, 1 - $MarginContainer/ScrollContainer.scroll_vertical/1000.0)

func _unhandled_key_input(event):
	if event.is_action_pressed("ui_cancel"):
		SceneManager.change_scene()
