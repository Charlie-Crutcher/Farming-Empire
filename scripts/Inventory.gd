extends Resource
class_name Inventory

@export var inventory_size : int = 5
@export var selected_slot : int = 0
@export var user_backpack_type = "Leather"

func select_inventory_slot_1():
	print("User Selected Slot 1")
	selected_slot = 0
	print(selected_slot)

func select_inventory_slot_2():
	print("User Selected Slot 2")
	selected_slot = 1
	print(selected_slot)

func select_inventory_slot_3():
	print("User Selected Slot 3")
	selected_slot = 2
	print(selected_slot)

func select_inventory_slot_4():
	print("User Selected Slot 4")
	selected_slot = 3

func select_inventory_slot_5():
	print("User Selected Slot 5")
	selected_slot = 4
