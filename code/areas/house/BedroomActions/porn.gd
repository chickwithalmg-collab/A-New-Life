extends Label


@export_file() var vanilla : Array[String]
@export_file() var lesbian : Array[String]

@export var computer : Label
@export var porn_site : Label
@export var scrollbar : ScrollContainer

var sweet_berries
var bread
var porkchops = 1
var testorder = Array([sweet_berries, bread, porkchops]) 
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass



func _on_vanilla_porn_button_down() -> void:
	var new_porn = GIFPlayer.new()
	add_child(new_porn)

	var current_vanilla = vanilla.pick_random()
	if current_vanilla == vanilla.get(0):
		new_porn.scale = Vector2(0.6, 0.7)
		new_porn.position = Vector2(75, 70)
		new_porn.gif = load(vanilla.get(0))
		#print("Vanilla Ice has been ordered!")
		
	elif current_vanilla == vanilla.get(1):
		new_porn.scale = Vector2(0.45, 0.55)
		new_porn.position = Vector2(75, 70)
		new_porn.gif = load(vanilla.get(1))		
		#print("Chocoalte Ice has been ordered!")
	elif current_vanilla == vanilla.get(2):
		new_porn.scale = Vector2(0.25, 0.3)
		new_porn.position = Vector2(75, 70)
		new_porn.gif = load(vanilla.get(2))		
		#print("Cherry Ice has been ordered!")	
		
	print("Test succesful")
	
	
	var current_order2 = testorder.pick_random()
	if current_order2 == sweet_berries:
		print("Sweet Berries have been ordered!")
	if current_order2 == bread:
		print("Bread has been ordered!")
	if current_order2 == porkchops:
		print("Porkchops has been ordered")
	
func _on_lesbian_porn_button_down() -> void:
	var new_porn = GIFPlayer.new()
	add_child(new_porn)

	var current_lesbo = lesbian.pick_random()
	if current_lesbo == lesbian.get(0):
		new_porn.scale = Vector2(0.3, 0.3)
		new_porn.position = Vector2(75, 70)
		new_porn.gif = load(lesbian.get(0))
		#print("Vanilla Ice has been ordered!")
		
	elif current_lesbo == lesbian.get(1):
		new_porn.scale = Vector2(0.3, 0.3)
		new_porn.position = Vector2(75, 70)
		new_porn.gif = load(lesbian.get(1))		
		#print("Chocoalte Ice has been ordered!")
	elif current_lesbo == lesbian.get(2):
		new_porn.scale = Vector2(0.3, 0.3)
		new_porn.position = Vector2(75, 70)
		new_porn.gif = load(lesbian.get(2))		
		#print("Cherry Ice has been ordered!")	


func _on_fetish_porn_button_down() -> void:
	pass # Replace with function body.


func _on_hardcore_porn_button_down() -> void:
	pass # Replace with function body.


func _on_trans_porn_button_down() -> void:
	pass # Replace with function body.


func _on_gangbang_porn_button_down() -> void:
	pass # Replace with function body.


func _on_go_back_to_desktop_button_down() -> void:
	porn_site.visible = false
	computer.visible = true
	scrollbar.scroll_vertical = 0
