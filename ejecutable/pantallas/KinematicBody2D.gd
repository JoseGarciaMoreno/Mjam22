extends KinematicBody2D

export (int) var speed = 80
export (int) var jump_speed = -1200
#export (int) var jump_speed = -900
export (int) var gravity = 4000
export (float, 0, 1.0) var friction = 0.1
export (float, 0, 1.0) var acceleration = 0.25
var velocity = Vector2.ZERO
export (int) var dir = 0
var cuenta  = 0

#func get_input():
##	var dir = 0
#	if Input.is_action_pressed("ui_right"):
#		dir += 1
#	if Input.is_action_pressed("ui_left"):
#		dir -= 1
#	if dir != 0:
#		velocity.x = lerp(velocity.x, dir * speed, acceleration)
#	else:
#		velocity.x = lerp(velocity.x, 0, friction)
#	animar(velocity.x)

#func animar(velo):
#	if velo<0:
#		$AnimationPlayer.play("caminar_izquierda")
#	elif velo>0:
#		d$AnimationPlayer.play("caminar_derecha")
#	else:
#		pass				
#func _physics_process(delta):
#	get_input()
#	velocity.y += gravity * delta
#	velocity = move_and_slide(velocity, Vector2.UP)
#	if Input.is_action_just_pressed("ui_select"):
#		if is_on_floor():
#			velocity.y = jump_speed

#func _physics_process(delta):
#	get_input()
#	velocity.y += gravity * delta
#	var snap = Vector2.DOWN * 16 if is_on_floor() else Vector2.ZERO
#	velocity = move_and_slide_with_snap(velocity, snap, Vector2.UP)
#	if Input.is_action_just_pressed("ui_select"):
#		if is_on_floor():
#			velocity.y = jump_speed
#extends KinematicBody2D
#
#export (int) var run_speed = 400

#export (int) var gravity = 2000
#
#var velocity = Vector2()
#var jumping = false
#
func get_input():
	var run_speed = 0
#	velocity.x = 0
	var right = Input.is_action_pressed('ui_right')
	var left = Input.is_action_pressed('ui_left')
	var jump = Input.is_action_just_pressed('ui_select')

	if jump and is_on_floor():
#		jumping = true
		velocity.y = jump_speed
	if right:
		velocity.x += run_speed
	if left:
		velocity.x -= run_speed
#
func _physics_process(delta):
	velocity.x = lerp(velocity.x, dir * speed, acceleration)
	print(Globo.cuen)
	get_input()
	velocity.y += gravity * delta
#	if jumping and is_on_floor():
#		jumping = false
	velocity = move_and_slide(velocity, Vector2(0, -1))
#	print(glo.cuen)
	if (Globo.cuen == 2):
		$Label.show()
		$Label.text = "Prueba que no \n ha dado tiempo mas"
	if (Globo.cuen > 3):
		print(get_tree().change_scene("res://level.tscn"))
		
	if (position.y > 610):
		Globo.cuen += 1
#		$TimerF.star(10)
		print("cuenta", cuenta)
#		print(position.y)
		print(get_tree().reload_current_scene())
#func _on_Area2D_body_entered(body):
#	print("mira que bbody entrabody", body.name)
#	if body.name == "Enemigo":
#		print("daño")
#		print("posicion del malo: ",body.get_position())
#		print("posicion del bueno: ", get_position())
#		if get_position().y < body.get_position().y:
#			print("player mas arriba")
#		else:
#			print("player mas abajo")
#	pass
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$Label.text =" Press "
#	$TimerF.sta$Timer2.start(10)r(10)
	$Timer2.start(10)
#	dir += 1
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_Timer_timeout():
	dir += 1
	pass # Replace with function body.


func _on_TextureButton_pressed():
		if is_on_floor():
#			jumping = true
			velocity.y = jump_speed

#
#func _on_TimerF_timeout():
#	Globo.cuen += 1
#	$TimerF.star(10)
#	pass # Replace with function body.


func _on_Timer2_timeout():
	Globo.cuen += 1
	$Timer2.start(10)
	pass # Replace with function body.
