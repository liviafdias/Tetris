extends Node

var cena = preload("res://scenes/Testinho.tscn").instance()
var ultimaCena = null

func _ready():
	randomize()
	#BlocoAleatorio.randCena()
	
func _process(delta):
	if (ultimaCena == null or ultimaCena.isOnFloor == true):
		var ultimacena = preload("res://scenes/Testinho.tscn").instance()
		add_child(ultimaCena)
		pass
	
	pass
