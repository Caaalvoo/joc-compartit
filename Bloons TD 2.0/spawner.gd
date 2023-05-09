extends Path2D

var escena_globus = preload("res://PathFollow2D.tscn")



func _on_Timer_timeout():
	var nouGlobus = escena_globus.instance()
	add_child(nouGlobus)
