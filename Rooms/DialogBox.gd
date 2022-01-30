extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func displayDialog(text):
	visible = true
	find_node("DialogText").bbcode_text = text
	$AnimationPlayer.play("DialogAnimation")
	
func optionSelect(selectionString):
	visible = false
	$AnimationPlayer.stop()

func _input(event):
	if visible && Input.is_action_pressed("ui_accept"):
		visible = false
		$AnimationPlayer.stop()
