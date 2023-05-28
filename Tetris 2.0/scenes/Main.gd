extends Node
"""
var t = [preload("res://scenes/BlocoL.tscn"),preload("res://scenes/BlocoLinha.tscn"),preload("res://scenes/BlocoQuadrado.tscn"),preload("res://scenes/BlocoT.tscn"),preload("res://scenes/BlocoZ.tscn")]
var ultimaCena = null

func _ready():
	randomize()
	#BlocoAleatorio.randCena()

func gerarCena():
	var index = randi() % t.size()
	var cena = t[index]
	var cenaInstanciada = cena.instance()
	cenaInstanciada.position = Vector2(288, 54)
	add_child(cenaInstanciada)
	return cenaInstanciada
	
func _process(delta):
	if (ultimaCena == null or ultimaCena.isOnFloor == true):
		ultimaCena = gerarCena()
		pass
	
	pass
"""
