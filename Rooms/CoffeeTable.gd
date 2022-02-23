extends "res://Rooms/Interactable.gd"


var foodSelectionUI

# Called when the node enters the scene tree for the first time.
func _ready():
	foodSelectionUI = get_parent().find_node("FoodSelection")
	pass # Replace with function body.

func optionSelect(optionString):
	Main.gameData["SelectedFood"] = optionString
	print(Main.gameData["SelectedAlarm"])
	
	Main.growUp(0.5)
	
func triggerOptions():
	if(foodSelectionUI!=null):
		foodSelectionUI.visible = true

func _input(event):
	if(foodSelectionUI!=null):
		if foodSelectionUI.visible && Input.is_action_pressed("ui_accept"):
			foodSelectionUI.visible = false

		
		
func triggerAutoInteract():
	#var alarm = alarmSounds[alarmSongsList.find(Main.gameData["SelectedAlarm"])]
	#var soundPlayer = get_node("AlarmSoundPlayer")
	#soundPlayer.stream = alarm
	#soundPlayer.play()
	
	#if(Main.gameData["SelectedFood"] != Main.gameData["SafeFood"]):
	#	Main.heartAttack(1.5)
	
	Main.heartAttack(1.5)
