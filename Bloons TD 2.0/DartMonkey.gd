extends StaticBody2D

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT and event.presed:
			if (event.postion != postion):
				var direccio = (event.global_postion - global-postion).normalized()
				var dard = DARD.insatnce()
				get_parent().add_child(dard)
				dard.global_postion = global_postion +(30*direccio)
				dard.set_dard_direction(direccio)
				
	
