extends Node2D

@onready var player = $Player
@onready var to_farm = $HouseToFarm
@onready var exit_text = $ExitText
@onready var farm = "res://scenes/Levels/DebugLevel.tscn"

var player_in_zone : bool = false

func _ready():
	player.disable_player_camera()

func _process(delta):
	if player_in_zone and Input.is_action_just_pressed("ui_accept"):
		get_tree().change_scene_to_file("res://scenes/Levels/DebugLevel.tscn")
		
func _on_house_to_farm_body_entered(body):
	print("Player Entered to_farm area")
	exit_text.show()
	player_in_zone = true


func _on_house_to_farm_body_exited(body):
	print("Player Exited to_farm area")
	exit_text.hide()
	player_in_zone = false
