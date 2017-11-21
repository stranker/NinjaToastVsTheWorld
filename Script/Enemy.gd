extends KinematicBody2D

const GRAVEDAD = 1400
var velocity = Vector2()
onready var direction = 1
onready var VELOCIDAD = 0
onready var SALTO = 0
onready var VIDA = 0

func _ready():
	add_to_group("Enemigo")
	pass

func movimientoLateral(delta):
	velocity.y += GRAVEDAD * delta
	if !get_node("RayIzq").is_colliding():
		velocity.x = VELOCIDAD
		direction = 1
		get_node("Sprite").set_flip_h(false)
	elif !get_node("RayDer").is_colliding():
		velocity.x = -VELOCIDAD
		direction = -1
		get_node("Sprite").set_flip_h(true)
	move_and_slide(velocity,Vector2(0,-1))
	pass

func salto(delta):
	velocity.y += GRAVEDAD * delta
	if(get_node("RayIzq").is_colliding() || get_node("RayDer").is_colliding()):
		set_axis_velocity(Vector2(0,-SALTO))
	pass

func setVelocidad(val):
	VELOCIDAD = val

func setSalto(val):
	SALTO = val

func setVida(val):
	VIDA = val

func getDamage():
	VIDA -= 1
	if(VIDA<=0):
		queue_free()
	pass