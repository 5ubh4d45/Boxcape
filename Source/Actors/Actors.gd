extends KinematicBody2D
class_name Actors

const FLOOR_NORMAL: = Vector2.UP
export var speed = Vector2(300.0, 1000.0)
export var gravity: = 3000.0

var _velocity: = Vector2.ZERO

onready var mainvol: AudioStreamPlayer= $"/root/MainMusic"
onready var sfx_jump: AudioStreamPlayer2D = $sfx_jump
onready var sfx_run: AudioStreamPlayer2D = $sfx_run
onready var sfx_die: AudioStreamPlayer2D = $sfx_die 

func _ready() -> void:
	
	mainvol.volume_db = -8


