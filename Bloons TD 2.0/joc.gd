extends Node2D

var escena_mono = preload("res://Monkeys/Dart/DartMonkey.tscn")
var escena_mono2 = preload("res://Monkeys/Mono2/Mono2.tscn")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var diners = 100
var vida = 100
var ronda
var necessari = 70
var necessari2 = 140
var mono
var mono2
var agafat = false
var num_mono = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	vida = 100
	diners = 170
	$Diners.text = "Diners:" + str(diners)
	$Vida.text = "Vida: " + str(vida)
	$Preu.text = "Preu: 70"
	$Preu2.text = "Preu: 140"
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	$Diners.text = "Diners:" + str(diners)
	$Vida.text = "Vida: " + str(vida)
	$Ronda.text = "Ronda: " + str(ronda)
	if vida == 0:
		get_tree().change_scene("res://has_perdut.tscn")
	if diners < necessari2:
		$Preu2.modulate = Color(1,0,0)
	else:
		$Preu2.modulate = Color(1,1,1)
	if diners < necessari:
		$Preu.modulate = Color(1,0,0)
	else:
		$Preu.modulate = Color(1,1,1)

func _on_Mono1_pressed():
	if diners >= necessari and agafat == false:
		agafat = true
		num_mono = 1
		mono = escena_mono.instance()
		add_child(mono)



func _on_Sortir_pressed():
	get_tree().change_scene("res://Menu.tscn")


func _on_Mono2_pressed():
	if diners >= necessari2 and agafat == false:
		agafat = true
		num_mono = 2
		mono2 = escena_mono2.instance()
		add_child(mono2)






func _on_brossa2_pressed():
	if num_mono == 1 and agafat == true:
		agafat = false
		mono.queue_free()
	if num_mono == 2 and agafat == true:
		agafat = false
		mono2.queue_free()



