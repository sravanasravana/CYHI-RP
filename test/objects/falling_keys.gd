extends Sprite2D

@export var fall_speed: float = 4.3

var init_y_pos: float = -360

func _init():
	set_process(false)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	global_position += Vector2(0, fall_speed)
	
	#time taken arrow to pass baseline
	if global_position.y > 280 and not $Timer.is_stopped():
		print($Timer.wait_time - $Timer.time_left)
		$Timer.stop()
		
func Setup(target_x: float, target_frame:int):
		frame = target_frame
		
		set_process(true)
	
	
func _on_delete_timeout():
	queue_free()
