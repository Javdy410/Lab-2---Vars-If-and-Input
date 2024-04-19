extends Sprite2D

var speed = 200

func _process(delta):
	var velocity = Vector2()

	if Input.is_action_pressed("ui_right"):
		print("Right key pressed")
		velocity.x += speed
	if Input.is_action_pressed("ui_left"):
		print("Left key pressed")
		velocity.x -= speed

	# Move the sprite
	position += velocity * delta


func _on_area_2d_area_entered(area):
	pass # Replace with function body.

func _on_Area2D_area_entered(area):
	if area.is_in_group("enemy"):
		print("Enemy entered!")
	else:
		pass  # Do nothing
