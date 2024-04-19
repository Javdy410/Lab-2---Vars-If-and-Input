extends Node

# Define the node class
class_name ExportedVariableNode

# Declare the exported variable with export hint
export (int) var my_exported_variable : int = 10

# Called when the node enters the scene tree for the first time
func _ready():
	# Print the value of the exported variable
	print("My exported variable:", my_exported_variable)

# Called every frame. 'delta' is the elapsed time since the previous frame
func _process(delta):
	# Add the exported variable to a constant value
	var constant_value = 5
	var result = my_exported_variable + constant_value
	
	# Perform conditional logic
	if result > 15:
		print("Result is greater than 15")
	elif result == 15:
		print("Result is equal to 15")
	else:
		print("Result is less than 15")

# Called for input events
func _input(event):
	# Check if the event is a key press
	if event is InputEventKey:
		# Check for specific key presses (AWSD)
		if event.scancode == KEY_A:
			print("A key pressed")
		elif event.scancode == KEY_W:
			print("W key pressed")
		elif event.scancode == KEY_S:
			print("S key pressed")
		elif event.scancode == KEY_D:
			print("D key pressed")
