extends Node2D

export (String) var roomname

var isActive = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _input(event):
	if Input.is_action_pressed("ui_interact"):
		print("Interact Pressed")
		print(isActive)
		if(isActive):
			Main.currentRoom = roomname
			SceneChanger.change_scene("res://Rooms/" + roomname + "-"+  Main.getIsOldString() +".tscn")


func triggerOptions():
	find_node("AlarmSelection").visible = true
			
		
func interactHover():
	print("Exit - Hover")
	isActive = true
	
func interactLeave():
	print("Exit - Leave")
	isActive = false
