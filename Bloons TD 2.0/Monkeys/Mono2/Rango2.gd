extends Area2D

var escena_dard = preload("res://dard.tscn")
var disp = true
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_Rango_body_entered(body):
	if body.is_in_group("Globus"):
		disp = true
