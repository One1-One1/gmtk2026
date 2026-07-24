extends Node2D

@export var laserLength := 300.0
@export var lasercolor := Color.WHITE
var hitPos:Vector2

func _process(delta: float) -> void:
	look_at(get_global_mouse_position())
	

func _physics_process(delta: float) -> void:
	
	
	$Aimbeam.target_position = Vector2(laserLength, 0)
	$Aimbeam.force_raycast_update()
	
	if $Aimbeam.is_colliding():
		hitPos = $Aimbeam.get_collision_point()
	else:
		hitPos = $Aimbeam.global_position 
	
	queue_redraw()
	
func _draw():
	if Global.stageStart == true:
		draw_line(
			to_local($Marker2D.global_position),
			to_local(hitPos),
			lasercolor,
			0.2
	)
