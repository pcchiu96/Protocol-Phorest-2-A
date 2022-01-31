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
			find_parent("Bedroom-Kid").find_node("DialogBox").displayDialog("Your fate 'hinges' on what you choose to do here.")

func triggerOptions():
	find_node("AlarmSelection").visible = true
			
		
func interactHover():
	print("Exit - Hover")
	isActive = true
	
func interactLeave():
	print("Exit - Leave")
	isActive = false
