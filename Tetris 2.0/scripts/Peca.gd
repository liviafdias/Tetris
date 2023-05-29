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

			

