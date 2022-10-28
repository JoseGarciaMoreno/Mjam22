extends Node2D


# Declare member variables here. Examples:
# var a = 2
var fuego = 0
var banderaWin = false
var banderaGM = false
var inicio = true


# Called when the node enters the scene tree for the first time.
func _ready():
	$hud/mensa/TimerInicio.start(3)
	$hud/AnimatedSprite.hide()
	$hud/AnimatedSprite2.hide()
	$hud/mensa.text = "Press with rhythm"
	$hud/mensa/TimerM.start(3)
	$hud/caliente.hide()
	$hud/fria.hide()
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_TextureButton_button_up():
	fuego +=1
	$AnimatedSprite.play("default")
	$TimerCarga.start(0.35)
	print("anima suma",fuego)
	
	_comprobar()
	if (fuego >3 and fuego <10 and !banderaWin):
		print($hud/AnimatedSprite.show())
		
		if($TimerControl.time_left == 0):
			$TimerControl.start(4)
			$hud/AnimatedSprite.show()
			$hud/AnimatedSprite.play("fuegoA")
	else:
		$TimerControl.stop()
		if(!banderaWin):
			$hud/AnimatedSprite.hide()
	
	pass # Replace with function body.


func _on_TimerCarga_timeout():
	$AnimatedSprite.stop()
	$TimerCarga.stop()
#	$TimerCarga.start(0.1)
	pass # Replace with function body.


func _on_TimerDescarga_timeout():
	fuego -=1
	if (fuego < -1 and ($hud/mensa/TimerInicio.time_left==0)):
		print("te hielas",fuego)
		$hud/fria.show()
		$hud/mensa.text = "te hielas"
	else:
		if (!$hud/mensa/TimerInicio.time_left==0):
			print("te hielas",fuego)
		else:
			if(!banderaWin):
				$hud/fria.hide()
				$hud/mensa.text = ""
	if (fuego < -4 ):
		print("game over",fuego)
		$hud/mensa.text = "GAME OVER"
		if (!banderaGM):
			banderaGM = true
			$hud/mensa/TimerGO.start(3)
#		get_tree().change_scene_to("res://pantallas/origenF.tscn")
	pass # Replace with function body.

func _on_TimerControl_timeout():
		if (fuego >3 and fuego <10 and !banderaWin):
			banderaWin = true
			print("win",fuego)
			$hud/mensa.text = "¡You WIN,  maquina!"
			$hud/AnimatedSprite.show()
			$hud/AnimatedSprite2.show()
			$hud/AnimatedSprite2.play("fuegoA")
			$hud/mensa/TimerM.start(3)
			pass # Replace with function body.

func _on_TimerM_timeout():
	$hud/mensa.text = ""
	$hud/mensa/TimerM.stop()
	if (banderaWin):
		print ("saltar pantalla")
		print(get_tree().reload_current_scene())
		pass # Replace with function body.

func _on_TimerInicio_timeout():
	$TimerDescarga.start(0.6)
	$hud/mensa/TimerInicio.stop()
	pass # Replace with function body.

func _comprobar():
	if (fuego > 10):
		$hud/caliente.show()
		$hud/mensa.text = "¡Careful, you burn!"
	else:
		if (!banderaWin):
			$hud/caliente.hide()
			$hud/mensa.text = ""
			if(fuego > 3 and fuego < 10):
				$hud/mensa.text = "Good rhythm"
			else:
				$hud/mensa.text = ""

func _on_TimerGO_timeout():
	print(get_tree().reload_current_scene())
	pass # Replace with function body.
