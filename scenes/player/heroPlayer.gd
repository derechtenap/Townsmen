extends CharacterBody2D

const characterSpeed: int = 500

func _process(_delta):
	
	# Get input direction for top-down movement
	var direction = Input.get_vector("left", "right", "up", "down")
	
	# Calculate velocity based on input direction and character speed
	# The _process delta variable is automatically considered for smooth 
	# movement
	velocity = direction * characterSpeed
	
	# Move the player based on the calculated velocity
	move_and_slide()
	
	# Check if the primary action button is pressed to shoot a laser
	if Input.is_action_pressed("primaryAction"):
		print("Shoot Laser!")

	# Check if the secondary action button is pressed to shoot a grenade
	if Input.is_action_pressed("secondaryAction"):
		print("Shoot Grenade!")
