extends Node

var score1:int = 0;

var score2:int = 0;

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func countScore1(score):
	print(score);
	score1 = score1 + score;
	pass;
	
func countScore2(score):
	print(score);
	score2 = score2 + score;
	pass;
