extends Area2D

@onready var mouse_in_area = false
@onready var click_count = 0
@onready var easter_egg_complete = false
@onready var sprite = $AnimatedSprite2D
@onready var sfx = $AudioStreamPlayer
@export var stats : Stats

func _process(delta):
	if mouse_in_area and !easter_egg_complete and Input.is_action_just_pressed("mouse_left") and !sprite.is_playing():
		click_count += 1
		sprite.play("default")
	if click_count == 3 and !easter_egg_complete:
		stats.player_money += 300
		easter_egg_complete = true
		sfx.play()
		

func _on_mouse_entered():
	mouse_in_area = true

func _on_mouse_exited():
	mouse_in_area = false
