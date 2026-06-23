extends GridContainer

@export var camera : Label
var camera_number = 0
signal cameras(value)
func _on_test_camera_button_button_down() -> void:
	if(camera_number <= 0):
		camera_number += 1
		cameras.emit(1)
	camera.text = "Camera: %0.0f" % [camera_number] + "x"
