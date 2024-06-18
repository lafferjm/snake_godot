extends Node2D

var rng = RandomNumberGenerator.new();

func spawn():
	var screen_size = get_viewport_rect().size;
	var x_coord = rng.randi_range(0, screen_size.x / 20);
	var y_coord = rng.randi_range(0, screen_size.y / 20);
	
	position.x = x_coord * 20;
	position.y = y_coord * 20;	

# Called when the node enters the scene tree for the first time.
func _ready():
	spawn();


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_2d_area_entered(area):
	spawn();
