extends Node2D

@export var scrollbar: ScrollContainer

@export var single_bedroom: Label
@export var streaming: Label
@export var videogames: Label
@export var email: Label
@export var porn: Label
@export var hypno: Label


@export var bathroom: Label
@export var kitchen: Label
@export var living_room: Label
@export var foyer: Label

@export var house_buttons: Label
#BedroomButtons
@export var computer: Label
@export var notepad: Label
@export var wardrobe: Label
@export var mirror: Label
@export var trophycase: Label

#@export var Inventory: GridContainer
var camera_number = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
#Roons in House-----------------

func _on_bathroom_button_down() -> void:
	single_bedroom.visible = false
	bathroom.visible = true
	kitchen.visible = false
	living_room.visible = false
	foyer.visible = false
	scrollbar.scroll_vertical = 0


func _on_kitchen_button_down() -> void:
	single_bedroom.visible = false
	bathroom.visible = false
	kitchen.visible = true
	living_room.visible = false
	foyer.visible = false
	scrollbar.scroll_vertical = 0

func _on_living_room_button_down() -> void:
	single_bedroom.visible = false
	bathroom.visible = false
	kitchen.visible = false
	living_room.visible = true
	foyer.visible = false
	scrollbar.scroll_vertical = 0

func _on_foyer_button_down() -> void:
	single_bedroom.visible = false
	bathroom.visible = false
	kitchen.visible = false
	living_room.visible = false
	foyer.visible = true
	scrollbar.scroll_vertical = 0

func _on_single_bedroom_button_down() -> void:
	single_bedroom.visible = true
	bathroom.visible = false
	kitchen.visible = false
	living_room.visible = false
	foyer.visible = false
	scrollbar.scroll_vertical = 0

#Areas in the Bedroom------------------
	notepad 
	wardrobe
	mirror
	trophycase

#Areas in Computer
	streaming
	videogames
	email
	porn
	hypno

func _on_computer_button_down() -> void:
	computer.visible = true
	single_bedroom.visible = false
	house_buttons.visible = false
	scrollbar.scroll_vertical = 0


func _on_notepad_button_down() -> void:
	notepad.visible = true
	single_bedroom.visible = false
	house_buttons.visible = false
	scrollbar.scroll_vertical = 0


func _on_wardrobe_button_down() -> void:
	wardrobe.visible = true
	single_bedroom.visible = false
	house_buttons.visible = false
	scrollbar.scroll_vertical = 0


func _on_mirror_button_down() -> void:
	mirror.visible = true
	single_bedroom.visible = false
	house_buttons.visible = false
	scrollbar.scroll_vertical = 0


func _on_trophycase_button_down() -> void:
	trophycase.visible = true
	single_bedroom.visible = false
	house_buttons.visible = false
	scrollbar.scroll_vertical = 0

func _on_my_inventory_cameras(value: Variant) -> void:
	camera_number += value
	print(camera_number)
func _on_stream_button_down() -> void:
	if (camera_number >= 1):
		streaming.visible = true
		computer.visible = false
		scrollbar.scroll_vertical = 0

	else:
		streaming.visible = false
		computer.visible = true


	
	


func _on_video_games_button_down() -> void:
	pass # Replace with function body.


func _on_emails_button_down() -> void:
	email.visible = true
	computer.visible = false
	scrollbar.scroll_vertical = 0
