extends blocoBase


var block = preload("res://scenes/Bloco.tscn")
var nomes = ["O", "I", "J", "Z", "S", "T", "L"]
var blocos = {
	"O": [Vector2(100, 100), Vector2(132, 100), Vector2(100, 132), Vector2(132, 132)],
	"I": [Vector2(100, 100), Vector2(100, 132), Vector2(100, 164), Vector2(100, 196)],
	"J": [Vector2(100, 100), Vector2(100, 132), Vector2(100, 164), Vector2(68, 164)],
	"Z": [Vector2(100, 100), Vector2(132, 100), Vector2(132, 132), Vector2(164, 132)],
	"S": [Vector2(132, 100), Vector2(164, 100), Vector2(100, 132), Vector2(132, 132)],
	"T": [Vector2(132, 100), Vector2(100, 132), Vector2(132, 132), Vector2(164, 132)],
	"L": [Vector2(100, 100), Vector2(100, 132), Vector2(100, 164), Vector2(132, 164)]
}


func _ready():
	randomize()
	#print("aaaa")
	_blockGen()


func _blockGen():
	var B = []
	var nome = nomes[randi()%len(nomes)]
	for i in range(4):
		var b = block.instance()
		add_child(b)	
		B.append(b)
		
		B[i].position = blocos[nome][i]
	
	
	
