extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

#a list of objects that have been interacted with for clean up
var interactedHover = []

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


func isTouchySensor():
	return true

func _physics_process(delta):
	var overlappingBodies = get_overlapping_bodies()
	var cleanUpHoverList = []
	
	for body in interactedHover:
		if(!overlappingBodies.has(body)):
			print("Remove")
			body.interactLeave()
			cleanUpHoverList.append(body)
	
	for body in overlappingBodies:
		#print(body)
		#print(!interactedHover.has(body))
		#print(body.has_method("interactHover"))
		if(!interactedHover.has(body) && body.has_method("interactHover")):
			#print("interactHover")
			#print(body)
			body.interactHover()
			interactedHover.append(body)
			
	for body in cleanUpHoverList:
		interactedHover.erase(body)
			
