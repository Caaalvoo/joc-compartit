extends Path2D

var escena_globus_vermell = preload("res://Globus/GlobusVermell/PathFollow2D.tscn")
var escena_globus_blau = preload("res://Globus/GlobusBlau/PathFollow2DB.tscn")
var escena_globus_verd = preload("res://Globus/GlobusVerd/PathFollow2DV.tscn")

onready var text_ronda = get_node("/root/Node2D")
var globus_rondes = []
var ronda1 = {
	"vermell":10,
	"blau":0,
	"verd":0
}
var ronda2 = {
	"vermell":0,
	"blau":10,
	"verd":0
}
var ronda3 = {
	"vermell":10,
	"blau":50,
	"verd":0
}
var ronda4 = {
	"vermell":0,
	"blau":0,
	"verd":5
}
var ronda5 = {
	"vermell":10,
	"blau":20,
	"verd":3
}
var ronda6 = {
	"vermell":0,
	"blau":0,
	"verd":10
}
var ronda7 = {
	"vermell":10,
	"blau":50,
	"verd":0
}
var ronda8 = {
	"vermell":40,
	"blau":40,
	"verd":40
}
var ronda9 = {
	"vermell":50,
	"blau":50,
	"verd":50
}
var ronda10 = {
	"vermell":75,
	"blau":75,
	"verd":75
}
var ronda11 = {
	"vermell":100,
	"blau":100,
	"verd":100
}

var ronda = 0
var delay_globus = [0.6, 0.8, 1, 0.2,0.5, 0.2,0.5, 0.2,0.5, 0.2,0.5, 0.2]
var v = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
var v_globus = v[0]
var globus_creats = 0
var globus_vermell_creats = 0
var globus_blau_creats = 0
var globus_verd_creats = 0

func _ready():
	$Ronda.set_wait_time(delay_globus[0])
	globus_rondes.append(ronda1)
	globus_rondes.append(ronda2)
	globus_rondes.append(ronda3)
	globus_rondes.append(ronda4)
	globus_rondes.append(ronda5)
	globus_rondes.append(ronda6)
	globus_rondes.append(ronda7)
	globus_rondes.append(ronda8)
	globus_rondes.append(ronda9)
	globus_rondes.append(ronda10)
	globus_rondes.append(ronda11)

func _process(delta):
	if text_ronda != null:
		text_ronda.ronda = ronda+1
	if ronda == len(globus_rondes)-1:
		$delay_rondes.stop()
		
func _on_Ronda_timeout():
	var vermells_ronda = globus_rondes[ronda]["vermell"]
	var blaus_ronda = globus_rondes[ronda]["blau"]
	var verds_ronda = globus_rondes[ronda]["verd"]
	if  vermells_ronda > globus_vermell_creats:
		var nouGlobus = escena_globus_vermell.instance()
		add_child(nouGlobus)
		globus_vermell_creats += 1
	elif blaus_ronda > globus_blau_creats:
		var nouGlobus = escena_globus_blau.instance()
		add_child(nouGlobus)
		globus_blau_creats += 1
	elif verds_ronda > globus_verd_creats:
		var nouGlobus = escena_globus_verd.instance()
		add_child(nouGlobus)
		globus_verd_creats += 1
	else:
		$Ronda.stop()
		$delay_rondes.start()






func _on_delay_rondes_timeout():
	globus_verd_creats = 0
	globus_blau_creats = 0
	globus_verd_creats = 0
	globus_creats = 0
	ronda +=1
	v_globus = v[ronda]
	$Ronda.set_wait_time(delay_globus[ronda])
	$Ronda.start()
	$delay_rondes.stop()
