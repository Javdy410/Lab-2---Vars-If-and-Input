extends Node2D

# Define movement speed
var speed = 200

# Called every frame
func _process(delta):
	var velocity = Vector2()

	# Check for key presses and update velocity accordindgly
	if Input.is_action_pressed("move_right"):
		velocity.x += 1
	if Input.is_action_pressed("move_left"):
		velocity.x -= 1
	if Input.is_action_pressed("move_down"):
		velocity.y += 1
	if Input.is_action_pressed("move_up"):
		velocity.y -= 1

	# Normalize velocity to ensure constant speed regardless of direction
	velocity = velocity.normalized() * speed

	# Move the sprite
	position += velocity * delta
