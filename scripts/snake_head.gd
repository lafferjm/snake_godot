extends Node2D

@export var snake_body_scene: PackedScene;

var body_segments = [];

# Called when the node enters the scene tree for the first time.
func _ready():
	var screen_size = get_viewport_rect().size;
	position.x = screen_size.x / 2 - 20;
	position.y = screen_size.y / 2 - 20;
	
	for i in 2:
		var body_segment = snake_body_scene.instantiate();
		# The position is relative to the parent not the entire room
		body_segment.position.y = i * 20;
		add_child(body_segment);
		body_segments.append(body_segment);



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
