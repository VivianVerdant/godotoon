extends PanelContainer

#func _ready():
	#get_tree().get_root().size_changed.connect(resize) 
#
#func resize():
	#var size = DisplayServer.window_get_size()
	#print(size)
	#if size.x > 800:
		#$Node2D.size.x = 800
