extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var vida := 10

# Called when the node enters the scene tree for the first time.
func _ready():
	add_to_group("Globus")
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if vida == 0:
		visible = false
