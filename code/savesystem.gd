extends Resource
class_name SaveData

@export var masc_stat = 20

@export var game_position : Vector2	
func change_masculinity(value : int):
	masc_stat += value
	
func update_pos(value : Vector2):
	game_position = value
	
