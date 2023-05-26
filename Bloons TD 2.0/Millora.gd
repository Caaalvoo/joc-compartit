extends Node2D

onready var mono = get_parent().mono
onready var money  = get_parent()
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_millorar_pressed():
	if money.diners - 30 >= 0:
		mono.millorar()
		mono.millorat = true
		money.diners -= 30
		queue_free()
	
func _on_Sortir_pressed():
	mono.activar = true
	queue_free()
