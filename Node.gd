extends Node

onready var neco = $neco

var animations = [ "walk", "cry", "vibe", "run", "rip", "spin" ]
var index = 0

func _ready():
	pass 

func _process(delta):
	if ( Input.is_action_just_pressed("ui_accept") ):
		if ( index == animations.size() ): index = 0
		neco.animation = animations[index]
		index += 1
