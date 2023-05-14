extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var monot
var escena_mono = preload("res://DartMonkey.tscn")
onready var joc = get_node("/root/Node2D")
var construir
var necessari = 75
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_Button_pressed():
	if joc.diners >= necessari:
		monot = escena_mono.instance()
		get_parent().add_child(monot)
		construir = true
