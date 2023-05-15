extends PathFollow2D
var Velocitat = 110
onready var multiplicador = get_parent().v_globus
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	multiplicador = get_parent().v_globus
	offset += Velocitat * delta * multiplicador
