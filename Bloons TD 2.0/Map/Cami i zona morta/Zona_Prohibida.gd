extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var posar = get_node("/root/Node2D/")
# Called when the node enters the scene tree for the first time.
func _ready():
	add_to_group("Zona_prohibida")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


