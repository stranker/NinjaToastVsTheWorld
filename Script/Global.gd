extends Node

var player
var cerdito
var vida = 0
var maxVida = 20

func _ready():
	set_process(true)
	pass

func _process(delta):
	if player!= null:
		vida = player.getVida()
	pass
