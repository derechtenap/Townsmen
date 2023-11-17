extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$Logo.rotation_degrees = 90

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Logo.rotation_degrees += 10 * delta

	if $Logo.rotation_degrees > 180:
		$Logo.rotation_degrees = 0
		
	# Reset logo position to x=0 again
	if $Logo.position.x > 1000:
		$Logo.position.x = 0
