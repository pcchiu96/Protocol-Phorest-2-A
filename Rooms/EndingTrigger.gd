extends StaticBody2D

export (String) var roomname

var isActive = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _input(event):
	if Input.is_action_pressed("ui_interact"):
		if(isActive):
			SceneChanger.change_scene("res://Rooms/Start Screen.tscn", 0, "Ending")

		
func interactHover():
	isActive = true
	
func interactLeave():
	isActive = false
