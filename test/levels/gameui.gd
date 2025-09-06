extends Control

var score: int = 0
var combo_count: int = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	Signals.IncrementScore.connect(IncrementScore)
	Signals.IncrementCombo.connect(IncrementCombo)
	Signals.ResetCombo.connect(ResetCombo)
	
	ResetCombo()
	
	
func IncrementScore(incr: int):
	score += incr 
	%Score.text = " " + str(score) + " pts"
	
func IncrementCombo():
	combo_count += 1
	%Combo.text = " " + str(combo_count) + "x COMBO"
	
func ResetCombo():
	combo_count += 0
	
