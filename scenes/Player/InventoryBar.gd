extends Node2D

@export var inventory : Inventory
@onready var frame_sprite = $InventoryFrame

func _physics_process(_delta):
	match inventory.selected_slot:
		0:
			frame_sprite.play("Slot1")
		1:
			frame_sprite.play("Slot2")
		2:
			frame_sprite.play("Slot3")
		3:
			frame_sprite.play("Slot4")
		4:
			frame_sprite.play("Slot5")
