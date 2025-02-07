extends Node2D

@onready var player = $EnvironmentalObjects/Player
@onready var house = $EnvironmentalObjects/PlayerStarterHouse
@onready var to_house = $EnvironmentalObjects/ToHouse
@onready var starter_house_interior = "res://scenes/Levels/Interiors/StarterHouseInterior.tscn"

var player_in_zone : bool = false

func _process(delta):
	if player_in_zone and Input.is_action_just_pressed("ui_accept"):
		get_tree().change_scene_to_file("res://scenes/Levels/Interiors/StarterHouseInterior.tscn")

func _on_to_house_body_entered(body):
	print("Player Entered to_house area")
	player.show_enter_text()
	player_in_zone = true

func _on_to_house_body_exited(body):
	print("Player Exited to_house area")
	player.hide_enter_text()
	player_in_zone = false
