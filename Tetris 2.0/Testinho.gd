extends Node2D
var block = preload("res://scenes/Bloco.tscn")
var nomes =["quadrado","linha"]
var blocos = {
	"quadrado":[Vector2(0,0),Vector2(32,0),Vector2(0,32),Vector2(32,32)],
	"linha":[Vector2(0,0),Vector2(32,0),Vector2(64,0),Vector2(96,0)]
}
func _ready():
	randomize()
	print("aaaa")
	_blockGen()


func _blockGen():
	var B = []
	var nome = nomes[randi()%len(nomes)]
	for i in range(4):
		var b = block.instance()
		add_child(b)	
		B.append(b)
		
		B[i].position = blocos[nome][i]
	
	
	
