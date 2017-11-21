extends Node

onready var player
onready var cerdito
onready var vida = 0
onready var maxVida = 20

func _ready():
	set_process(true)
	pass

func _process(delta):
	if player!= null:
		vida = player.getVida()
	pass
