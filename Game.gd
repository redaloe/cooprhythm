extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var i=5
const bpm= 80
var spb= 60/bpm
# Called when the node enters the scene tree for the first time.
func _ready():
	
	$m.play()
	$Timer.wait_time=spb


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
func _input(event):
	if event is InputEventKey and event.scancode==KEY_SPACE:
		if event.pressed:
			print("pressed")
			$ColorRect.color=Color(0,0,0)
			$ColorRect2.color=Color(1,1,1)
		else:
			print("released")
			$ColorRect.color=Color(1,1,1)
			$ColorRect2.color=Color(0,0,0)
			



func _on_Timer_timeout():
	if i>0:
		print(i)
		i-=1
	
