extends Label

var name1 = ""
@export var computer : Label
@export var email_app : Label
@export var scrollbar : ScrollContainer

@export var email_title1 : Button
@export var email_title2 : Button
#@export var Email_title3 : Label

@export var delete_email1 : Button
@export var delete_email2 : Button

@export var email1 : Label
@export var email2 : Label

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	email_title1.add_theme_color_override("font_color", Color("#0049df"))
	email_title2.add_theme_color_override("font_color", Color("#0049df"))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass




func _on_main_email_name_1(name: Variant) -> void:
	name1 += name
	print(name1 + " is my name")
	email_title1.text = "From: WeedForLive \nTo: " + name1
	email_title2.text = "From: DildoFactory \nTo: " + name1	
	
func _on_spam_mail_1_button_down() -> void:
	email_app.visible = false
	email1.visible = true
	scrollbar.scroll_vertical = 0

func _on_delete_spam_1_button_down() -> void:
	email_title1.visible = false
	delete_email1.visible = false


func _on_spam_mail_2_button_down() -> void:
	email_app.visible = false
	email2.visible = true
	scrollbar.scroll_vertical = 0


func _on_delete_spam_2_button_down() -> void:
	email_title2.visible = false
	delete_email2.visible = false


func _on_go_back_to_desktop_button_down() -> void:
	email1.visible = false
	email2.visible = false
	computer.visible = true
	scrollbar.scroll_vertical = 0
