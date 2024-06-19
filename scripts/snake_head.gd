extends Node2D

@export var snake_body_scene: PackedScene;

var body_segments = [];
var x_direction = 0;
var y_direction = 0;

# Called when the node enters the scene tree for the first time.
func _ready():
	var screen_size = get_viewport_rect().size;
	position.x = screen_size.x / 2;
	position.y = screen_size.y / 2;
	
	for i in 2:
		var body_segment = snake_body_scene.instantiate();
		
		body_segment.position.x = position.x;
		body_segment.position.y = position.y + (i * 20) + 20;
		
		body_segment.top_level = true;

		add_child(body_segment);
		body_segments.append(body_segment);



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("move_right") && x_direction != -20:
		x_direction = 20;
		y_direction = 0;

	if Input.is_action_just_pressed("move_left") && x_direction != 20:
		x_direction = -20;
		y_direction = 0;
		
	if Input.is_action_just_pressed("move_up") && y_direction != 20:
		x_direction = 0;
		y_direction = -20;
		
	if Input.is_action_just_pressed("move_down") && y_direction != -20:
		x_direction = 0;
		y_direction = 20;
	
	if (x_direction != 0 || y_direction != 0):
		var tail = body_segments.pop_back();
		tail.position.x = position.x;
		tail.position.y = position.y;
		
		body_segments.push_front(tail);

	position.x += x_direction;
	position.y += y_direction;

func _grow_snake():
	var tail = body_segments.back();
	var new_tail = tail.duplicate();
	call_deferred("add_child", new_tail);
	body_segments.push_back(new_tail);

