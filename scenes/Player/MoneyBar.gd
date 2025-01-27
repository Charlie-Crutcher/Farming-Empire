extends Node2D

@export var stats : Stats
@onready var text = $Amount  # Ensure this points to the Label node

func _process(delta):
	if stats:
		text.text = str(stats.player_money)  # Display the actual amount of money
	else:
		text.text = "Stats not set"  # Handle the case where stats are not assigned
