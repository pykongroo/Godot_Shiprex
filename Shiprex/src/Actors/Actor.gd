extends KinematicBody2D

class_name Actor

var speed: = Vector2(300, 0)
var velocity: = Vector2.ZERO

func _physics_process(delta: float) -> void:
	velocity.x = (Input.get_action_strength("move_right") - Input.get_action_strength("move_left") )* speed.x
	move_and_slide(velocity)
