extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var diners = 100
var vida = 100
# Called when the node enters the scene tree for the first time.
func _ready():
	vida = 100
	diners = 150
	$Diners.text = "Diners:" + str(diners)
	$Vida.text = "Vida: " + str(vida)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Diners.text = "Diners:" + str(diners)
	$Vida.text = "Vida: " + str(vida)
