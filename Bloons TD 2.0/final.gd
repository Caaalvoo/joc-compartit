extends Area2D


var vida_general := 100
func _process(delta):
	pass

func _on_Area2D_body_entered(body):
	var c = get_node("res://Globus/GlobusVermell/GlobusVermell.gd")
	if body.is_in_group("Globus"):
		if c.color_globus == "vermell":
			vida_general -=1
			print(vida_general)
