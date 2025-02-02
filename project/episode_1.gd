@tool
extends VBoxContainer

@export_tool_button("import") var import_action = import

func import():
	print("importing")
	for node in get_children():
		node.queue_free()
	
	var dir := DirAccess.open("res://panels")
	if dir == null: printerr("Could not open folder"); return
	dir.list_dir_begin()
	for file: String in dir.get_files():
		if file.ends_with(".png"):
			print(file)
			var resource := load(dir.get_current_dir() + "/" + file)
			print(resource)
			var panel: TextureRect = TextureRect.new()
			add_child(panel)
			panel.owner = get_tree().edited_scene_root
			panel.texture = resource
