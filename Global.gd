extends Node

var music_vol = -25
var music = AudioStreamPlayer.new()

# Called when the node enters the scene tree for the first time.
func _ready():
	add_child(music)
	music.stream = load("res://bossa-in-my-heart-13187.mp3")
	music.volume_db = music_vol
	music.play()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func change_music_vol(volume):
	music_vol = volume
	music.volume_db = music_vol
