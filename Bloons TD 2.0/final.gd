extends Area2D

onready var vida_general = get_node("/root/Node2D")

func _process(delta):
	pass

func _on_Area2D_body_entered(body):
	if body.is_in_group("Globus"):
		if body.color_globus == "vermell":
			vida_general.vida -= 1
		body.queue_free()
	if body.is_in_group("Globus"):
		if body.color_globus == "blau":
			vida_general.vida -= 2
		body.queue_free()
