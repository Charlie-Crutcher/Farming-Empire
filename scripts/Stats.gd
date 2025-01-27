extends Resource
class_name Stats

@export var player_stamina : float = 51.0
@export var player_health : float = 100.0
@export var player_damage : float = 10.0
@export var player_money : int = 200

func reduce_stamina_1(amount : float) -> void:
	player_stamina -= amount
