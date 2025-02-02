extends PanelContainer

#func _ready():
	#get_tree().get_root().size_changed.connect(resize) 
#
#func resize():
	#var size = DisplayServer.window_get_size()
	#print(size)
	#if size.x > 800:
		#$Node2D.size.x = 800


func _on_prev_button_up() -> void:
	print("prev")

func _on_next_button_up() -> void:
	print("next")

func _on_scroll_top_button_up() -> void:
	var tween = create_tween()
	tween.set_trans(Tween.TRANS_SINE)
	tween.set_ease(Tween.EASE_IN_OUT)
	var percent = %episode_container.scroll_vertical / %episode_container.get_v_scroll_bar().max_value
	tween.tween_property(%episode_container, "scroll_vertical", 0.0, 4.0 * percent)
	%episode_container.scroll_vertical
