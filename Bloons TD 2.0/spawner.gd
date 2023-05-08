extends Path2D
var temps = 0
var spawntime = 2
var seguir = preload("res://Path2D.tscn")

func _process(delta):
	temps = temps + delta
	
	if (temps > spawntime):
		var nouGlobus = follower.instance()
		add_child(nouGlobus)

	
