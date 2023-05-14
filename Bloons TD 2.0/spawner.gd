extends Path2D

var escena_globus_vermell = preload("res://PathFollow2D.tscn")
var escena_globus_blau = preload("res://PathFollow2DB.tscn")
onready var text_ronda = get_node("/root/Node2D")
var globus_rondes = [10 , 20 , 15]
var ronda = 0
var delay_globus = [1, 1.5, 0.5]
var v = [70, 90, 200]
var v_globus = v[0]
var globus_creats = 0
var tipus_globus = ["vermell", "blau", "vermell"]


func _ready():
	$Ronda.set_wait_time(delay_globus[0])
	
func _process(delta):
	if text_ronda != null:
		text_ronda.ronda = ronda+1
	
func _on_Ronda_timeout():
	if globus_creats < globus_rondes[ronda] and tipus_globus[ronda] == "vermell":
		var nouGlobus = escena_globus_vermell.instance()
		add_child(nouGlobus)
		globus_creats += 1
	elif globus_creats < globus_rondes[ronda] and tipus_globus[ronda] == "blau":
		var nouGlobus = escena_globus_blau.instance()
		add_child(nouGlobus)
		globus_creats += 1
	else:
		$Ronda.stop()
		$delay_rondes.start()






func _on_delay_rondes_timeout():
	globus_creats = 0
	ronda +=1
	v_globus = v[ronda]
	$Ronda.set_wait_time(delay_globus[ronda])
	$Ronda.start()
	$delay_rondes.stop()
