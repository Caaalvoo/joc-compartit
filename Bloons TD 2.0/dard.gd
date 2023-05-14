extends KinematicBody2D


var velocitat = 10
var moviment = Vector2.ZERO
var direccio
var mirar = Vector2.ZERO

func _ready():
	add_to_group("Dard")
	if direccio != null:
		$Sprite.look_at(direccio.global_position)
		mirar = direccio.global_position - global_position

func _process(delta):
	if direccio:
		moviment = Vector2.ZERO
		moviment = moviment.move_toward(mirar, velocitat * delta)
		moviment = moviment.normalized() * velocitat
		global_position += moviment


	

"""
var globus = get_node("res://Rango.tscn")

func _ready():
	add_to_group("Dard")

func _process(delta):
	moviment = moviment * velocitat
	var direccio = look_at(globus.pos_globus)
	moviment = Vector2.ZERO
	moviment = moviment.move_toward(direccio, delta)
	moviment = moviment.normalized() * velocitat
	global_position += moviment
	"""



