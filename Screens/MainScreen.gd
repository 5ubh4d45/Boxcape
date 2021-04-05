extends Control

onready var mainvol: AudioStreamPlayer= $"/root/MainMusic"
onready var menuvol: AudioStreamPlayer= $"/root/MainScreen/MenuMusic"
onready var cred: Label = $Credits

func _ready() -> void:
	if menuvol.playing == true:
		mainvol.volume_db = -50
