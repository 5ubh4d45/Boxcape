extends Control

onready var label: Label = get_node("label")
onready var mainvol: AudioStreamPlayer= $"/root/MainMusic"
onready var menuvol: AudioStreamPlayer= $"/root/EndScreen/MenuMusic"

func _ready() -> void:
	label.text = label.text % [PlayerData.score, PlayerData.deaths]
	if menuvol.playing == true:
		mainvol.volume_db = -50

