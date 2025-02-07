extends Node2D

@export var inventory : Inventory
@onready var inventory_screen = $AnimatedSprite2D


func _ready():
	inventory_screen.hide()

func _process(delta):
	if inventory.inventory_open:
		inventory_screen.show()
	if !inventory.inventory_open:
		inventory_screen.hide()

#-----Hotbar 1-----#
func _on_hotbar_01_area_mouse_entered():
	inventory_screen.play("hotbar_01")

#-----Hotbar 2-----#
func _on_hotbar_02_area_mouse_entered():
	inventory_screen.play("hotbar_02")

#-----NoHotbarArea-----#
func _on_no_hotbar_area_mouse_entered():
	inventory_screen.play("no_selection")


func _on_hotbar_03_area_mouse_entered():
	inventory_screen.play("hotbar_03")
