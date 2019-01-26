extends Node

func _ready():
	connect("mouse_exited", self, "_on_mouse_exit")

func _gui_input(event):
	
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT:
			if event.is_pressed():
				print("LMB pressed at " + name)
			else:
				print("LMB released at " + name)

func _on_mouse_exit():
	print("moused exited " + name)
	release_focus()