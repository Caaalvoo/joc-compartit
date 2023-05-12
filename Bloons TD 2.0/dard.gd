extends StaticBody2D

var atac = preload("res://dard.tscn")
var acc = 800
var vel = Vector2()


func _ready():
	pass # Replace with function body.
func _physics_process(delta):
	var colisio = move_and_collide(vel*delta)
	if colisio:
		vel = vel.bouncel(colisio.normal)
