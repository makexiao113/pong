extends Area2D

var speed = 500;

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# 如果位置小于0则按上键不会改变位置
	if (self.position.y > 0):
		self.position.y = self.position.y - (Input.get_action_strength("player2_up")*delta*speed);
		pass;
	if (self.position.y + 40 < 648):
		self.position.y = self.position.y + (Input.get_action_strength("player2_down")*delta*speed);
		pass;
	# 检测当前撞的体积是否是小球，如果是小球则改变小球方向
	for index in get_overlapping_areas():
		if index.is_in_group("Ball"):
			if (index.xVec > 0):
				index.xVec = -index.xVec;
				pass;
			pass;
	pass
