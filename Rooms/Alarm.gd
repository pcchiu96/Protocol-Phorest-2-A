extends "res://Rooms/Interactable.gd"

export (Array, AudioStream) var alarmSounds

export (Array, String) var alarmSongsList


func _ready():
	pass

func optionSelect(optionString):
	Main.gameData["SelectedAlarm"] = optionString
	print(Main.gameData["SelectedAlarm"])
	
	Main.growUp(0.5)
		
func triggerOptions():
	if(find_node("AlarmSelection")!=null):
		find_node("AlarmSelection").visible = true		
		
func triggerAutoInteract():
	var alarm = alarmSounds[alarmSongsList.find(Main.gameData["SelectedAlarm"])]
	var soundPlayer = get_node("AlarmSoundPlayer")
		
	soundPlayer.stream = alarm
	soundPlayer.play()
	print("Play sounds")
	if(Main.gameData["SelectedAlarm"] != Main.gameData["SafeAlarm"]):
		yield(soundPlayer, "finished")
		Main.heartAttack(0)
