extends Resource
class_name Inventory

#Storage Array
@export var items : Array[Item]

#UI Stuff
@export var selected_slot : int = 0
@export var inventory_open : bool = false

func open_inventory_screen():
	print("Inventory: User opened inventory screen")
	inventory_open = true
	
func close_inventory_screen():
	print("Inventory: User closed inventory screen")
	inventory_open = false
	
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

func select_inventory_slot_6():
	print("User Selected Slot 6")
	selected_slot = 5
	
func select_inventory_slot_7():
	print("User Selected Slot 7")
	selected_slot = 6

func select_inventory_slot_8():
	print("User Selected Slot 8")
	selected_slot = 7
	
func select_inventory_slot_9():
	print("User Selected Slot 9")
	selected_slot = 8

func select_inventory_slot_10():
	print("User Selected Slot 10")
	selected_slot = 9
