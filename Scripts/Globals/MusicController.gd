extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	Main.glMusicController = self
	pass # Replace with function body.


func _enter_tree():
	get_node("OldManBGM").play()

		
func playOldMan():
	get_node("OldManBGM").stop()
	get_node("KidBGM").play()
	

func playKid():
	get_node("OldManBGM").play()
	get_node("KidBGM").stop()
	
func stopAll():
	get_node("OldManBGM").stop()
	get_node("KidBGM").stop()
	
	
