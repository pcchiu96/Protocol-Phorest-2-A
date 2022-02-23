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
var inDialog
var inEvent
var currentRoom = "Bedroom"
var glMusicController



func _ready():
	isOld = true
	inDialog = false
	inEvent = false
	

func getIsOldString():
	if (isOld):
		return "Old"
	else:
		return "Kid"


func heartAttack(delay): 
	inEvent = true
	isOld = false
	glMusicController.playOldMan()
	SceneChanger.change_scene("res://Rooms/" + currentRoom + "-Kid.tscn", delay, "HeartAttack")
	
func growUp(delay, specialScene = "None"):
	inEvent = true
	isOld = true
	glMusicController.playKid()
	SceneChanger.change_scene("res://Rooms/" + currentRoom + "-Old.tscn", delay, specialScene)

func isPlayerFrozen():
	return inDialog || inEvent
	
func clearPlayerFrozen():
	inDialog = false
	inEvent = false
