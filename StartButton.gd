extends Button

func _ready():
	print("Button")
	pass # Replace with function body.

func _pressed():
	SceneChanger.change_scene("res://Rooms/Bedroom-Old.tscn")
