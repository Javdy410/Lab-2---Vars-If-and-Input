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


# Declare a boolean variable to keep track of enemy collision
var enemyCollided = false

func _on_Area2D_area_entered(area):
	if area.is_in_group("enemy"):
		print("Enemy collided!")
		# Set the boolean variable to true when an enemy collides
		enemyCollided = true
	else:
		# Set the boolean variable to false if the colliding object is not in the "enemy" group
		enemyCollided = false
