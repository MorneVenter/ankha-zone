extends Node3D

@onready var animator: AnimationPlayer = $AnimationPlayer

var DANCE = 'Dance'
var MEOWDANCE = 'MeowDance'

func _ready() -> void:
	animator.current_animation = DANCE

func _next_animation() -> void:
	if animator.current_animation == DANCE:
		animator.current_animation = MEOWDANCE
	else:
		animator.current_animation = DANCE

func _on_timer_timeout() -> void:
	_next_animation()
