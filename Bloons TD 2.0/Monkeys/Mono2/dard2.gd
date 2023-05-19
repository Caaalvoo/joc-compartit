extends KinematicBody2D


var velocitat = 30
var moviment = Vector2.ZERO
var direccio
var mirar = Vector2.ZERO
var vida_globus = 2
var impacte = false
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




func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
