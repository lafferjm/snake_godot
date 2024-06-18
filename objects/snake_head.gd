extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	var screen_size = get_viewport_rect().size;
	position.x = screen_size.x / 2 - 20;
	position.y = screen_size.y / 2 - 20;


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
