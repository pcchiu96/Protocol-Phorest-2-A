extends Button

export (String) var selectionString
export (Array, String) var targetNodeNames

func _ready():
	pass # Replace with function body.

func _pressed():
	for nodeName in targetNodeNames:
		if(find_parent(nodeName) == null):
			find_parent("Bedroom-Kid").find_node(nodeName).optionSelect(selectionString)
		else:
			find_parent(nodeName).optionSelect(selectionString)
			
	
	get_parent().visible = false



