extends Node2D

var rng = RandomNumberGenerator.new();

signal eaten;

func spawn():
	var screen_size = get_viewport_rect().size;
	var x_coord = rng.randi_range(0, (screen_size.x / 20) - 20) * 20;
	var y_coord = rng.randi_range(0, (screen_size.y / 20) - 20) * 20;

	position.x = x_coord;
	position.y = y_coord;

# Called when the node enters the scene tree for the first time.
func _ready():
	spawn();


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_2d_area_entered(area):
	if (area.is_in_group("SnakeHead")):
		$Crunch.play();
		eaten.emit();
	spawn();
