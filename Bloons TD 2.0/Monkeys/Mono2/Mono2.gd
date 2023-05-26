extends StaticBody2D
var globus = []
var primer_globus
var escena_dard = preload("res://Monkeys/Mono2/dard2.tscn")
var escena_millora = preload("res://Monkeys/Mono2/Milloramono2.tscn")
var mirar
var construir = true
var posar = false
var primer_canvi = false
var entro = -1
var surto = 0
var millorat = false
var primer = 0
var maus = false
var millorant = false

func _ready():
	add_to_group("Defenses")
	
func _process(_delta):
	if construir == false:
		$Rang.visible = false
		if globus != []:
			primer_globus = globus[0]
			mirar = primer_globus.global_position
			look_at(mirar)
		if primer_canvi == true:
			get_parent().agafat = false
			primer_canvi = false
	else:
		$Rang.visible = true
		global_position = get_global_mouse_position()
		if posar == true:
			$Rang.modulate = Color(0,0,0)
			if Input.is_action_just_pressed("clic"):
				get_parent().diners -= 140
				construir = false
				primer_canvi = true
				$Timer2.start()
		else:
			$Rang.modulate = Color(1,1,1)
	if millorat == false and construir == false and get_parent().activar == true:
		if Input.is_action_just_released("clic") and maus == true  and  primer != 0:
			get_parent().activar = false
			var millora = escena_millora.instance()
			millora.global_position = Vector2(450,550)
			get_parent().add_child(millora)
	


func _on_Rango_body_entered(body):
	if body.is_in_group("Globus"):
		globus.append(body)


func _on_Rango_body_exited(body):
	if body.is_in_group("Globus"):
		globus.erase(body)





func _on_Timer_timeout():
	if primer_globus:
		if globus:
			if primer_globus == globus[0]:
				$DartMonkey_Shooting.play("Disparar", false)
				var dard = escena_dard.instance()
				dard.global_position = global_position
				dard.direccio = primer_globus
				get_parent().add_child(dard)
				$DartMonkey_Shooting.play("Disparar", true)





func _on_posarsn_area_entered(area):
	if area.is_in_group("Zona_prohibida"):
		entro +=1
		posar = false



func _on_posarsn_area_exited(area):
	if area.is_in_group("Zona_prohibida"):
		surto +=1
		if surto == entro:
			posar = true

func millorar():
	$Timer.wait_time = 0.6
	millorant = true


func _on_Timer2_timeout():
	get_parent().activar = true
	primer = 1
	$Timer2.stop()


func _on_posarsn_mouse_entered():
	maus = true




func _on_posarsn_mouse_exited():
	maus = false



