extends Control


export(String) var main_menu
export (PackedScene) onready  var test_level

# Called when the node enters the scene tree for the first time.
func _ready():
	if(Singleton.mute == false):
		$AudioStreamPlayer.play()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_level_selector_pressed():
	get_tree().change_scene(main_menu)


func test_level_load():
	get_tree().change_scene_to(test_level)
