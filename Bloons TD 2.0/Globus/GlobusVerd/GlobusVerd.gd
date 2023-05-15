extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var vida := 3 setget canvi_vida
var color_globus := "blau"
onready var money = get_node("/root/Node2D")

# Called when the node enters the scene tree for the first time.
func _ready():
	add_to_group("Globus")
	$Sprite.modulate = Color(0.2,1,0)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func canvi_vida(nova_vida):
	vida = nova_vida
	if vida <= 0:
		queue_free()


func _on_hitboxb_body_entered(body):
	if body.is_in_group("Dard"):
		canvi_vida(vida-1)
		money.diners += 1
		body.queue_free()