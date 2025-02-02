extends ScrollContainer

func _input(event: InputEvent) -> void:
	
	if event is InputEventScreenTouch and event.pressed and not %bottom_menu.visible:
		bottom_menu_fade_in()
	if event is InputEventMouseButton and not %bottom_menu.visible:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			bottom_menu_fade_in()
	
	if event is InputEventScreenDrag:
		bottom_menu_fade_out()
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_WHEEL_UP or event.button_index == MOUSE_BUTTON_WHEEL_DOWN and event.pressed:
			bottom_menu_fade_out()

func bottom_menu_fade_in():
	%bottom_menu.set_visible(true)
	var tween = create_tween()
	tween.tween_property(%bottom_menu, "modulate", Color(1.0,1.0,1.0,1.0), .1)
	
func bottom_menu_fade_out():
	var tween = create_tween()
	tween.tween_property(%bottom_menu, "modulate", Color(1.0,1.0,1.0,0.0), .25)
	tween.tween_property(%bottom_menu, "visible", false, .25)
