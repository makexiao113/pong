extends Label


# Called when the node enters the scene tree for the first time.
func _ready():
	self.text = "玩家2:" + String.num_int64(Score.score2);
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.text = "玩家2:" + String.num_int64(Score.score2);
	pass
