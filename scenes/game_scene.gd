extends Node2D

@export var snake_scene: PackedScene

# Called when the node enters the scene tree for the first time.
func _ready():
	var mob = snake_scene.instantiate();
	add_child(mob);


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
