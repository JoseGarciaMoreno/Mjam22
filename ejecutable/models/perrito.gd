extends Spatial


# Declare member variables here. Examples:
var dentro = false
var niQue = 0
var tiempoGB = 3
var GO = false
var WIN = false
var buckeWIN=0


# Called when the node enters the scene tree for the first time.
func _ready():
	$hud/mensaje.text = "Calienta el hod dog para el malo"
	$hud/mensaje/TimerM.start(3+3)
	$fuego2.hide()
	$TimerDragon.start(47)
	$dragon.hide()
	$hud/Sprite.hide()
	$hud/cal.hide()
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta)

func _on_Area_area_entered(area):
#	print("area",area.name)
	if (!dentro and area.name == "AreaF"):
		dentro = true
#		print("area",area.name == "AreaF")
		$tiempoPe.start(0.5)
	pass # Replace with function body.

func _on_Area_area_exited(_area):
		if (dentro):
			dentro = false
			$tiempoPe.stop()
			pass # Replace with function body.

func _on_tiempoPe_timeout():
	niQue +=1 
	print("nivel",niQue)
	if (niQue == 13):
		$hud/mensaje.text = "Cudiado que No se queme"
		$hud/mensaje/TimerM.start(3)
		$fuego2.show()
		$TimerWin.start(tiempoGB+3)

	if (niQue == 17 and !WIN):
		$hud/mensaje.text = "GAME OVER"
		$hud/cal.show()
		GO = true
		$TimerGO.start(tiempoGB+1)
#		print("entra quema", niQue)
	pass # Replace with function body.

func _on_TimerGO_timeout():
	print("camia pantalla", niQue)
#	get_parent().
	print(get_tree().reload_current_scene())
	pass # Replace with function body.

func _on_TimerM_timeout():
	if (WIN):
			print("WIIIIIIIIIIN", niQue)
			$hud/mensaje/TimerM.stop()
	else:
		if(GO):
			$hud/mensaje.text = "GAME OVER 2"
			$hud/cal.show()
		else:
			$hud/mensaje.text = ""
			$hud/mensaje/TimerM.stop()
	pass # Replace with function body.

func _on_TimerWin_timeout():
	$TimerWin.stop()
#	print("buckeWIN",buckeWIN)
	if (WIN):
		$TimerWin.stop()
		print(get_tree().change_scene("res://pantallas/origenF.tscn"))
		
#		print(get_tree().reload_current_scene())
	else:
		if(!GO):
			print("hacho)")
#			$hud/mensaje.size_flags_vertical = 122.2
			$hud/mensaje.text = "YOU WIN, maquina"
			$TimerWin/AudioStreamPlayer.play(0)
			$dragon.show()
			$hud/Sprite.show()
			WIN = true
			$TimerWin.start(tiempoGB+5)
#	get_tree().reload_current_scene()
	pass # Replace with function body.


func _on_TimerDragon_timeout():
	$hud/mensaje.text = "GAME OVER"
	$hud/cal.show()
	GO = true
	$TimerGO.start(tiempoGB+1)
	
	pass # Replace with function body.
