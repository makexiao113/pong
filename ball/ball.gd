extends Node2D

# 小球初始化位置
var init_position = Vector2(0,0);
# 小球的速度
var speed = 500;

var yVec = 1;

var xVec = 1;

# Called when the node enters the scene tree for the first time.
func _ready():
	# 将小球加入组当中
	add_to_group("Ball")
	# 初始化小球的当前位置
	init_position = self.position;
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# 使用CanvasItem绘制
	queue_redraw();
	# 让小球按照500的速度进行移动
	self.position = self.position + Vector2(speed * delta * xVec, speed * delta * yVec);
	pass

func _draw():
	# 使用CanvasItem绘制圆形
	draw_circle(Vector2(0,0), 5, Color.WHITE);
	pass
	
# 重置方法将小球的位置放在原先的方
func resetPosition():
	print("reset!")
	self.position = self.init_position;
	pass;
