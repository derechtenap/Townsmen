extends Sprite2D

var pos: Vector2 = Vector2.ZERO
var test_scale: int = 1

const speed: int = 10

# Called when the node enters the scene tree for the first time.
func _ready():
	pos = Vector2(300, 200)
	position = pos
	
	test_scale = 2
	scale.x = test_scale
	scale.y = test_scale 
	# OR: scale = Vector2(test_scale, test_scale)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# Move logo to the right window side
	position.x += test_scale * delta
