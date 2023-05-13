extends KinematicBody2D


var velocitat := 10
var moviment := Vector2(1,1)
var pos_globus = preload("res://Globus/GlobusVermell/GlobusVermell.tscn")
var globus = pos_globus.instance()
onready var escena_dartmonkey = get_node("/root/Node2D/Monos/DartMonkey")
onready var direccio = escena_dartmonkey.mirar


func _ready():
	add_to_group("Dard")

func _process(delta):
	if direccio:
		moviment = Vector2.ZERO
		moviment = moviment.move_toward(direccio, velocitat * delta)
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



