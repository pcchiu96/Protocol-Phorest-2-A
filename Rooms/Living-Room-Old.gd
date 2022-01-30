extends Node2D

var cleaned = false;

# Called when the node enters the scene tree for the first time.
func _ready():
	Main.currentRoom = "Living-Room"
	pass # Replace with function body.

func _enter_tree():
	if !Main.gameData["HealthyEater"]:
		Main.heartAttack(0.5)
	
