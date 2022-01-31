# Main is the main game source that contains the current state of the game world.
#  The variables and functions that exist here should be about manipulating the game state
extends Node

var isOld
var gameData = {
		"SelectedAlarm" : "SpikeDefuse",
		"SafeAlarm" : "RvrFlwsInYou",
		"NinjaSafe" : false,
		"HealthyEater" : true
	}
var isFrozen

var currentRoom = "Bedroom"

var glMusicController


func _ready():
	isOld = true
	isFrozen = false
	

func getIsOldString():
	if (isOld):
		return "Old"
	else:
		return "Kid"


func heartAttack(delay): 
	isOld = false
	glMusicController.playOldMan()
	SceneChanger.change_scene("res://Rooms/" + currentRoom + "-Kid.tscn", delay, "HeartAttack")
	
func growUp(delay, specialScene = "None"):
	isOld = true
	glMusicController.playKid()
	SceneChanger.change_scene("res://Rooms/" + currentRoom + "-Old.tscn", delay, specialScene)
