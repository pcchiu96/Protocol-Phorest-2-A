extends KinematicBody2D

export (int) var directionOffset = 50
export (int) var speed = 200
export (int) var test

var velocity = Vector2()
var touchySensor = Vector2()
var direction

func get_input():
	velocity = Vector2()
	if Input.is_action_pressed("right"):
		direction = "right"
		velocity.x += 1
		touchySensor.x = directionOffset
		touchySensor.y = 0
		$Sprite.flip_h = true
		$AnimationPlayer.play("Run Right")
	if Input.is_action_pressed("left"):
		direction = "left"
		velocity.x -= 1
		touchySensor.x = -directionOffset
		touchySensor.y = 0
		$Sprite.flip_h = false
		$AnimationPlayer.play("Run Left")
	if Input.is_action_pressed("down"):
		velocity.y += 1
		touchySensor.x = 0
		touchySensor.y = 1 * directionOffset
		if (direction == "right"):
			$AnimationPlayer.play("Run Right")
		else:
			$AnimationPlayer.play("Run Left")
	if Input.is_action_pressed("up"):
		velocity.y -= 1
		touchySensor.x = 0
		touchySensor.y = -1 * directionOffset
		if (direction == "right"):
			$AnimationPlayer.play("Run Right")
		else:
			$AnimationPlayer.play("Run Left")
	if (velocity.x == 0 and velocity.y == 0):
		$AnimationPlayer.play("Idle")
		
	velocity = velocity.normalized() * speed

func _physics_process(delta):
	if Main.isPlayerFrozen():
		$AnimationPlayer.play("Idle")
		return
		
	get_input()
	velocity = move_and_slide(velocity)
	$TouchySensorArea.position = touchySensor

