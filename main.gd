extends Node3D

@onready var camera_animation: AnimationPlayer = $CameraAnimationPlayer
@onready var lightning_animation: AnimationPlayer = $Lights/LightningAnimationPlayer

func _ready() -> void:
	camera_animation.current_animation = "Sway"
	$Lights/Lightning.visible = false


func _on_lightning_timer_timeout() -> void:
	lightning_animation.current_animation = "Flash"
