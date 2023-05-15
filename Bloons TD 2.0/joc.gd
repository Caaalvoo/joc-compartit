extends Node2D

var escena_mono = preload("res://DartMonkey.tscn")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var diners = 100
var vida = 100
var ronda
var necessari = 70
var mono
var construir = false
var agafat = false
# Called when the node enters the scene tree for the first time.
func _ready():
	vida = 100
	diners = 170
	$Diners.text = "Diners:" + str(diners)
	$Vida.text = "Vida: " + str(vida)
	$Preu.text = "Preu: 70"
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Diners.text = "Diners:" + str(diners)
	$Vida.text = "Vida: " + str(vida)
	$Ronda.text = "Ronda: " + str(ronda)
	if vida == 0:
		get_tree().change_scene("res://has_perdut.tscn")



func _on_Button_pressed():
	if diners >= necessari and agafat == false:
		agafat = true
		mono = escena_mono.instance()
		add_child(mono)
		construir = true




func _on_Sortir_pressed():
	get_tree().change_scene("res://Menu.tscn")
