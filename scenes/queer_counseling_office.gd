extends Node2D

@export var downtown : Node2D
@export var counseling_office : Node2D
@export var scrollbar : ScrollContainer

@export var trans_button : Button
@export var not_trans_button : Button
@export var ftm_button : Button
@export var nb_button : Button
@export var mtf_button : Button

var afab = false
var amab = false

signal trans(transness)
signal gender_choice2(gender2)
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_main_gender_choice_1(gender: Variant) -> void:
	if gender == 0:
		afab = true
	elif gender == 1:
		amab = true
func _on_trans_button_down() -> void:
	emit_signal("trans", 0)
	trans_button.visible = false
	not_trans_button.visible = false
	if(afab == true):
		ftm_button.visible = true
		nb_button.visible = true
	elif(amab == true):
		mtf_button.visible = true
		nb_button.visible = true

func _on_not_trans_button_down() -> void:
	emit_signal("trans", 1)
	trans_button.visible = false
	not_trans_button.visbile = false


func _on_back_to_downton_button_down() -> void:
	counseling_office.visible = false
	downtown.visible = true
	scrollbar.scroll_vertical = 0


func _on_ftm_button_down() -> void:
	emit_signal("gender_choice2", 0)
	print("You're a trans man")
	counseling_office.visible = false
	downtown.visible = true
	scrollbar.scroll_vertical = 0

func _on_nb_button_down() -> void:
	emit_signal("gender_choice2", 1)
	print("You're nonbinary")
	counseling_office.visible = false
	downtown.visible = true
	scrollbar.scroll_vertical = 0

func _on_mtf_button_down() -> void:
	emit_signal("gender_choice2", 2)
	print("You're a trans girly")
	counseling_office.visible = false
	downtown.visible = true
	scrollbar.scroll_vertical = 0
