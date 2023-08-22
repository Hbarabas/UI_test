extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	$Volume_Slider.value = Global.music_vol


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_back_button_pressed():
	$".".queue_free()


func _on_option_button_item_selected(index):
	match(index):
		0:
			DisplayServer.window_set_size(Vector2i(1920,1080))
		1:
			DisplayServer.window_set_size(Vector2i(1152,648))
		2:
			DisplayServer.window_set_size(Vector2i(640,480))


func _on_volume_slider_changed():
	Global.change_music_vol($Volume_Slider.value)


func _on_volume_slider_value_changed(value):
	Global.change_music_vol(value)
