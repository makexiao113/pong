extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _physics_process(delta):
	for index in get_overlapping_areas():
		if index.is_in_group("Ball"):
			index.resetPosition();
			Score.countScore2(1);
			pass;
	pass;
