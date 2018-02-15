extends Node

onready var player
onready var cerdito
onready var vida = 20
onready var maxVida = 20
onready var score = 0

func _ready():
	set_process(true)
	player = null
	pass

func _process(delta):
	if player!= null:
		vida = player.getVida()
	pass
