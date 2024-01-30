extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass;
	
func _physics_process(delta):
	# 检测当前撞的体积是否是小球，如果是小球则改变小球方向
	for index in get_overlapping_areas():
		if index.is_in_group("Ball"):
			if (index.yVec < 0):
				index.yVec = -index.yVec;
				pass;
			pass;
	pass;
