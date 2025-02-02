extends ScrollContainer

func _input(event: InputEvent) -> void:
	
	if event is InputEventScreenTouch and not %bottom_menu.visible:
		%bottom_menu.visible = !%bottom_menu.visible
	if event is InputEventMouseButton and not %bottom_menu.visible:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			%bottom_menu.visible = !%bottom_menu.visible
	
	if event is InputEventScreenDrag:
		%bottom_menu.visible = false
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_WHEEL_UP or event.button_index == MOUSE_BUTTON_WHEEL_DOWN and event.pressed:
			%bottom_menu.visible = false
