extends PathFollow2D
export var Velocitat = 70

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	offset += Velocitat * delta
