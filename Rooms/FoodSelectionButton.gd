extends TextureButton

export (bool) var isHealthyChoice
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _pressed():
	Main.gameData["HealthyEater"] = isHealthyChoice
	
	Main.growUp(0)
