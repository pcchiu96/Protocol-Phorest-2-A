extends Node2D

export (String) var roomname

var isActive = false

var dialogBox

# Called when the node enters the scene tree for the first time.
func _ready():
	dialogBox = find_parent("Bedroom-Old").find_node("DialogBox")

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
	dialogBox.displayDialog("Do you think I'm a-door-able?\n (Press 'E' to go to the next room)")

	
func interactLeave():
	print("Exit - Leave")
	isActive = false
	dialogBox.closeDialogBox()
