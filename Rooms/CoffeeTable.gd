extends "res://Rooms/Interactable.gd"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func optionSelect(optionString):
	Main.gameData["SelectedFood"] = optionString
	print(Main.gameData["SelectedAlarm"])
	
	Main.growUp(0.5)
	
func triggerOptions():
	if(get_parent().find_node("FoodSelection")!=null):
		#get_parent().find_node("FoodSelection").popup()
		get_parent().find_node("FoodSelection").visible = true
			
		
func triggerAutoInteract():
	#var alarm = alarmSounds[alarmSongsList.find(Main.gameData["SelectedAlarm"])]
	#var soundPlayer = get_node("AlarmSoundPlayer")
	#soundPlayer.stream = alarm
	#soundPlayer.play()
	
	#if(Main.gameData["SelectedFood"] != Main.gameData["SafeFood"]):
	#	Main.heartAttack(1.5)
	
	Main.heartAttack(1.5)
