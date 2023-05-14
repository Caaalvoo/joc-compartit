extends StaticBody2D
var globus = []
var primer_globus
var escena_dard = preload("res://dard.tscn")
var mirar

	
func _process(delta):
	if globus != []:
		primer_globus = globus[0]
		mirar = primer_globus.global_position
		look_at(mirar)
	


func _on_Rango_body_entered(body):
	if body.is_in_group("Globus"):
		globus.append(body)


func _on_Rango_body_exited(body):
	if body.is_in_group("Globus"):
		globus.erase(body)





func _on_Timer_timeout():
	if primer_globus:
		if globus:
			if primer_globus == globus[0]:
				var dard = escena_dard.instance()
				dard.global_position = global_position
				dard.direccio = primer_globus
				get_parent().add_child(dard)
