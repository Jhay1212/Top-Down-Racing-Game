extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var health: int = 100

func _ready():
	pass


func _physics_process(delta):
	#var velocity = Vector2.ZERO
	#var direction = Input.get_vector(velocity)
	
	var direction = Input.get_vector('ui_left', 'ui_right', 'ui_up', 'ui_down')
	position += direction * SPEED * delta
	
	move_and_slide()


func _on_area_2d_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	health -= 10
