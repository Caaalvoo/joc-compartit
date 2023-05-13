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
		disparar()


func _on_Rango_body_exited(body):
	if body.is_in_group("Globus"):
		globus.erase(body)


func disparar():
	var dard = escena_dard.instance()
	add_child(dard)
