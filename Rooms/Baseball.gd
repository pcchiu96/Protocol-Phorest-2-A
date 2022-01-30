extends "res://Rooms/Interactable.gd"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func triggerOptions():
	Main.gameData["NinjaSafe"] = true
	
	Main.growUp(1.5)
