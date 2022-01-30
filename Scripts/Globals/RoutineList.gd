extends Node

var routineList


# Called when the node enters the scene tree for the first time.
func _ready():
	routineList = {
		"Wake Up" : false,
		"Get Clothes" : false,
		"Shower" : false,
		"Get Medicine" : false,
		"Go Outside" : false
	}

func doTask(routineString):
	routineList[routineString] = true
