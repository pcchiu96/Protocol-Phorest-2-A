extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("AnimationPlayer").play("AppleCupcakeMarkers")
	print(get_node("FoodSelectionPopup"))
	#get_node("FoodSelectionPopup").popup()
	get_node("AlarmSelection").popup()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
