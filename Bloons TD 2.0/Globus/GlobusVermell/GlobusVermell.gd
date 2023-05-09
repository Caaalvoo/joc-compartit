extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var vida := 1 setget canvi_vida
var color_globus := "vermell"
# Called when the node enters the scene tree for the first time.
func _ready():
	add_to_group("Globus")
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func canvi_vida(nova_vida):
	vida = nova_vida
	if vida <= 0:
		queue_free()
