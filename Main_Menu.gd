extends CenterContainer


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_new_game_button_pressed():
	pass # Start a new game


func _on_load_game_button_pressed():
	pass # load game



func _on_settings_button_pressed():
	var node = load("res://settings_menu.tscn")
	var scene = node.instantiate()
	get_tree().get_root().add_child(scene)


func _on_exit_button_pressed():
	get_tree().quit()


func _on_chicken_button_pressed():
	$Extras/Chicken_Button/AnimationPlayer.play("bounce")


func _on_turtle_button_pressed():
	$Extras/Turtle_Button/AnimationPlayer.play("walk_off")
