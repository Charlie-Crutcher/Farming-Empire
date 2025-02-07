extends Area2D

@onready var player = "res://scenes/Player/Player.tscn"
@onready var sprite = $AnimatedSprite2D

func _ready():
	sprite.play("untilled")


func _on_area_entered(area):
	print("Tilled")
	sprite.play("tilled")
