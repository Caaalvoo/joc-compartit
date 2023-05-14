extends PathFollow2D
var Velocitat
onready var velocitat = get_parent().v_globus
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	Velocitat = get_parent().v_globus
	offset += Velocitat * delta
