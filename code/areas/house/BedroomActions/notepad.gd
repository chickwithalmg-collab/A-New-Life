extends Label

@export var notepad : Label
@export var notes : Label
@export var single_bedroom : Label
@export var house_buttons : Label
@export var scrollbar : ScrollContainer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_go_back_to_bedroom_button_down() -> void:
	single_bedroom.visible = true
	house_buttons.visible = true
	notepad.visible = false
	scrollbar.scroll_vertical = 0
