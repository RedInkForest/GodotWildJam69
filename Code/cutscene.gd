extends Area2D


@onready var bob = $"../Bob"
@onready var timer = $Timer
@onready var b_label = $"../Bob/Bob_text"
@onready var c_label = $"../character_text"

func _on_body_entered(body):
	bob.play("Radio")
	timer.start()

func _on_timer_timeout():
	b_label.text = "Oh yeah and a croissant flew in there."
	c_label.text = "MY CROISSANT!!!"
	
