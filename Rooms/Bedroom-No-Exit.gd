extends Node2D

export (String) var roomname

var isActive = false

var dialogBox

# Called when the node enters the scene tree for the first time.
func _ready():
	dialogBox = find_parent("Bedroom-Kid").find_node("DialogBox")

func _input(event):
	if Input.is_action_pressed("ui_interact"):
		print("Interact Pressed")
		print(isActive)

func triggerOptions():
	find_node("AlarmSelection").visible = true
			
		
func interactHover():
	print("Exit - Hover")
	isActive = true			
	dialogBox.displayDialog("Your fate 'hinges' on what you choose to do here.")

	
func interactLeave():
	print("Exit - Leave")
	isActive = false
	dialogBox.closeDialogBox()
