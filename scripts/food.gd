extends Node2D

var rng = RandomNumberGenerator.new();

func spawn():
	var screen_size = get_viewport_rect().size;
	var x_coord = rng.randi_range(0, screen_size.x / 20);
	var y_coord = rng.randi_range(0, screen_size.y / 20);
	
	while true:
		pass

# Called when the node enters the scene tree for the first time.
func _ready():
	spawn();


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
