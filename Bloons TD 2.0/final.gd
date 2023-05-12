extends Area2D


var vida_general := 100
func _process(delta):
	pass

func _on_Area2D_body_entered(body):
	if body.is_in_group("Globus"):
		if body.color_globus == "vermell":
			vida_general -= 1
			print(vida_general)
		body.queue_free()
