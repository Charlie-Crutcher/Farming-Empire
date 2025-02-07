extends Node2D

@export var inventory : Inventory
@onready var frame_sprite = $InventoryFrame

func _physics_process(_delta):
	if inventory.selected_slot <0:
		inventory.selected_slot = 9
	if inventory.selected_slot >9:
		inventory.selected_slot = 0
	
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
		5:
			frame_sprite.play("Slot6")
		6:
			frame_sprite.play("Slot7")
		7:
			frame_sprite.play("Slot8")
		8:
			frame_sprite.play("Slot9")
		9:
			frame_sprite.play("Slot0")
