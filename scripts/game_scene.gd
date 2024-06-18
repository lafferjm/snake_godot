extends Node2D

@export var snake_scene: PackedScene
@export var food_scene: PackedScene

# Called when the node enters the scene tree for the first time.
func _ready():
	var snake = snake_scene.instantiate();
	add_child(snake);
	
	var food = food_scene.instantiate();
	add_child(food);


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
