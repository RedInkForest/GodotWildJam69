extends MarginContainer

@onready var ButtonContainer = $VBoxContainer/Buttons

func _ready():
	$VBoxContainer/Label.visible_characters = 0
	for button in ButtonContainer.get_children():
		button.pressed.connect(button_pressed.bind(button.name.to_lower()))
		button.mouse_entered.connect(button_focused.bind(button))

var vischar = 0.0
func _physics_process(delta):
	if $VBoxContainer/Label.visible_characters >= 25:
		return
	vischar = lerp(vischar, 25.0, delta)
	$VBoxContainer/Label.visible_characters = int(vischar)


func button_pressed(button_name: String):
	match button_name:
		"play": SceneManager.change_scene("res://Scenes/level_1.tscn")
		"about": SceneManager.change_scene("res://Scenes/About.tscn")
		"settings" :pass
		"quit":get_tree().quit()

func button_focused(button):
	button.grab_focus()

func _unhandled_key_input(event):
	if event.is_pressed() && !get_window().gui_get_focus_owner():
		$VBoxContainer/Buttons/Play.grab_focus()

