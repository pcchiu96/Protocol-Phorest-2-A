extends Area2D

var hasTriggered

# Called when the node enters the scene tree for the first time.
func _ready():
	hasTriggered = false

func _physics_process(delta):
	for body in get_overlapping_areas():
		if(!Main.gameData["NinjaSafe"] 
			&& !hasTriggered 
			&& body.has_method("isTouchySensor")):
			hasTriggered = true
			var animPlayer = find_node("AnimationPlayer")
			animPlayer.play("BurglerAttack")
			triggerAutoInteract()

func triggerAutoInteract():
		Main.heartAttack(1)
