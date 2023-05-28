extends KinematicBody2D

var Posicao_blocos : Array

func _ready():
	createShape()
	
	
func createShape():
	Posicao_blocos = [ # bloco.position = Posicao_blocos[i]
# I
	[
		Vector2(-1.5,-0.5),
		Vector2(-0.5,-0.5),
		Vector2(0.5,-0.5),
		Vector2(1.5,-0.5),
	],
	# Z
	[
		Vector2(-0.5,-0.5),
		Vector2(0.5,-0.5),
		Vector2(0.5,0.5),
		Vector2(1.5,0.5),
	],
	# S
	[
		Vector2(0.5,-0.5),
		Vector2(1.5,-0.5),
		Vector2(-0.5,0.5),
		Vector2(0.5,0.5),
	],
	# T
	[
		Vector2(-0.5,-0.5),
		Vector2(0.5,-0.5),
		Vector2(1.5,-0.5),
		Vector2(0.5,0.5),
	],
	# L
	[
		Vector2(-0.5,-0.5),
		Vector2(0.5,-0.5),
		Vector2(1.5,-0.5),
		Vector2(-0.5,0.5),
	],
	# J
	[
		Vector2(1.5,0.5),
		Vector2(-0.5,-0.5),
		Vector2(0.5,-0.5),
		Vector2(1.5,-0.5),
	],
	# O
	[
		Vector2(-0.5,-0.5),
		Vector2(0.5,-0.5),
		Vector2(-0.5,0.5),
		Vector2(0.5,0.5),
	],

	]
	
		
 #for i in range(Posicao_blocos.size()):
	randomize()
	var index = randi() % Posicao_blocos.size() 
	print(index) #teste
	var posicao1 = Posicao_blocos[index][0]
	#print(posicao1) #teste
	var posicao2 = Posicao_blocos[index][1]
	#print(posicao2)
	var posicao3 = Posicao_blocos[index][2]
	#print(posicao3)
	var posicao4 = Posicao_blocos[index][3]
	#print(posicao4)
	$Bloco1/Sprite.position = posicao1
	$Bloco2/Sprite.position = posicao2
	$Bloco3/Sprite.position = posicao3
	$Bloco4/Sprite.position = posicao4
	
	
	
"""
extends KinematicBody2D
class_name blocoBase

var velocity = Vector2()
var gravity = 60
var speed = 20
var isOnFloor = false
	
func _physics_process(delta):
	
	velocity.y = gravity
	var dir = int(Input.is_action_pressed("right")) - int(Input.is_action_pressed("left"))
	#if Input.is_action_just_pressed("left"):
		#rotation_degrees += -90 
	if(!isOnFloor):
		print(position.x)
		if (Input.is_action_just_pressed("up")):
			rotation_degrees += 90 	
		if Input.is_action_just_pressed("left"):
			position.x -= speed
		if Input.is_action_just_pressed("right"):
			position.x += speed
		if Input.is_action_pressed("down"):
			if ( velocity.y <= 3 * gravity):
				velocity.y += velocity.y
		
	if(move_and_slide(velocity) == Vector2(0,0)):
		isOnFloor = true
"""
			

