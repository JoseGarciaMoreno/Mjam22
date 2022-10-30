extends Spatial

# Random spawn of Rigidbody cubes.
func _on_SpawnTimer_timeout():
	var new_rb = preload("res://cube_rigidbody.tscn").instance()
	new_rb.translation.y = 15
	new_rb.translation.x = rand_range(-5, 5)
	new_rb.translation.z = rand_range(-5, 5)
	add_child(new_rb)


func _on_Area_area_entered(_area):
	$perrito.GO = true
	$perrito/hud/mensaje.text = "GAME OVER"
	$perrito/hud/cal.show()
#	$perrito.TimerGO.start(tiempoGB+1)  $hud/cal.show()
	$perrito/TimerGO.start($perrito.tiempoGB+1)
	print("muere")
	pass # Replace with function body.
