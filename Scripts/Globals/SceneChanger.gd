extends CanvasLayer

onready var animation_player = $AnimationPlayer
onready var black = $Control/Black

func change_scene(path, delay = 0, animation="None"):
	yield(get_tree().create_timer(delay), "timeout")
	animation_player.play("Fade")
	yield(animation_player, "animation_finished")
	
	if(animation != "None"):
		animation_player.play(animation)
		yield(animation_player, "animation_finished")
	
	Main.clearPlayerFrozen()
	
	assert (get_tree().change_scene(path) == OK)
	animation_player.play_backwards("Fade")
	yield(animation_player, "animation_finished")
