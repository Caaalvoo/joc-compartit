extends Path2D

var escena_globus = preload("res://PathFollow2D.tscn")
onready var text_ronda = get_node("/root/Node2D")
var globus_rondes = [10,20,5]
var ronda = 0
var delay_globus = [1.5,1,0.5]
var globus_creats = 0
func _ready():
	$Ronda.set_wait_time(delay_globus[0])
	
func _process(delta):
	if text_ronda != null:
		text_ronda.ronda = ronda+1
	
	
func _on_Ronda_timeout():
	if globus_creats < globus_rondes[ronda]:
		var nouGlobus = escena_globus.instance()
		add_child(nouGlobus)
		globus_creats += 1
	else:
		$Ronda.stop()
		$delay_rondes.start()






func _on_delay_rondes_timeout():
	globus_creats = 0
	ronda +=1
	$Ronda.set_wait_time(delay_globus[ronda])
	$Ronda.start()
	$delay_rondes.stop()
