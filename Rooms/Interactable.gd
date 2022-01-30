extends StaticBody2D

# id of the interactable used to register into game variables
export (String) var promptText

var inspectorID
var isActive = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _input(event):
	if Input.is_action_pressed("ui_interact"):
		if(isActive):
			get_parent().find_node("DialogBox").displayDialog(promptText)
			triggerOptions()

func triggerOptions():
	pass
		
func interactHover():
	get_node("InspectIcon").visible = true
	isActive = true
	
func interactLeave():
	get_node("InspectIcon").visible = false
	isActive = false
	
func optionSelect(optionString):
	pass
	
