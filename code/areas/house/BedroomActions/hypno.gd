extends Label

@export var computer : Label
@export var hypno_site : Label
@export var scrollbar : ScrollContainer
@export var hypno_options : Label

@export var gender_affirming_hypno_button : Button

@export var gender_affirming_hypno : Label
@export var erotic_hypno : Label
@export var relaxing_hypno : Label

var femininity = 0
var masculinity = 0

var afab = false
var amab = false
var is_trans = false
var ftm = false
var nb = false
var mtf = false

signal stat1(fem)
signal stat2(masc)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	gender_affirming_hypno_button.visible = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_main_stat_1(fem: Variant) -> void:
	femininity = fem
	
func _on_main_stat_2(masc: Variant) -> void:
	masculinity = masc
	
func _on_main_gender_choice_1(gender: Variant) -> void:
	if(gender == 0):
		afab = true
		printt("You are AFAB")
	elif(gender == 1):
		amab = true
		print("You are AMAB")


func _on_main_trans(transness: Variant) -> void:
	if transness >= 1:
		is_trans = false
		gender_affirming_hypno_button.visible = false
		print("You're not trans :(")
	else:
		is_trans = true
		gender_affirming_hypno_button.visible = true
		print("You're trans!")

func _on_main_gender_choice_2(gender2: Variant) -> void:
	if gender2 == 0:
		ftm = true
	if gender2 == 1:
		nb = true
	if gender2 == 2:
		mtf = true



func _on_gender_affirming_hypno_button_down() -> void:
	gender_affirming_hypno.visible = true
	hypno_options.visible = false
	scrollbar.scroll_vertical = 0
	if ftm == true:
		gender_affirming_hypno.text = "Such a good boy"
		femininity -= 1
		masculinity += 5
		emit_signal("stat1", femininity)
		emit_signal("stat2", masculinity)
		
		
	elif nb == true:
		gender_affirming_hypno.text = "Such a good enby"
		if femininity > masculinity:
			var femdiffrence  = 0
			femdiffrence = femininity - masculinity
			print("You're more feminine by " + str(femdiffrence) + " points")
			femininity -= (femdiffrence / 10)
			#print("Femininity is " + str(femininity))
			masculinity += (femdiffrence / 10)
			#print("Masculinity is " + str(masculinity))
			emit_signal("stat1", femininity)
			emit_signal("stat2", masculinity)
		elif femininity < masculinity:
			var mascdiffrence  = 0
			mascdiffrence = masculinity - femininity 
			print("You're more masculine by " + str(mascdiffrence) + " points")
			femininity += (mascdiffrence / 10)
			masculinity -= (mascdiffrence / 10)
			emit_signal("stat1", femininity)
			emit_signal("stat2", masculinity)

	elif mtf == true:
		gender_affirming_hypno.text = "Such a good girl"
		femininity += 5
		masculinity -= 1
		emit_signal("stat1", femininity)
		emit_signal("stat2", masculinity)



func _on_erotic_hypno_button_down() -> void:
	erotic_hypno.visible = true
	hypno_options.visible = false

func _on_relaxing_porn_button_down() -> void:
	relaxing_hypno.visible = false
	hypno_options.visible = false
	
func _on_go_back_to_desktop_button_down() -> void:
	gender_affirming_hypno.visible = false
	erotic_hypno.visible = false
	relaxing_hypno.visible = false
	computer.visible = true
	scrollbar.scroll_vertical = 0
