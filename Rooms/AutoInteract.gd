extends Area2D

var hasTriggered

# Called when the node enters the scene tree for the first time.
func _ready():
	hasTriggered = false

func _physics_process(delta):
	for body in get_overlapping_areas():
		if(!hasTriggered && body.has_method("isTouchySensor")):
			hasTriggered = true
			var alertVF = get_parent().find_node("Alert-VF")
			alertVF.find_node("Alert-VF-AP").play("ExclamationAnimation")
			get_parent().triggerAutoInteract()
