extends Control

onready var scene_tree: SceneTree = get_tree()
onready var paused_overlay: ColorRect = get_node("PauseOverlay")
onready var score: Label = get_node("score")
onready var pause_title: Label = get_node("PauseOverlay/pause")


const Died_mssg = "You Died!"

var paused = false setget set_paused

func _ready() -> void:
	PlayerData.connect("score_updated", self, "update_score")
	PlayerData.connect("player_died", self, "_on_player_died")
	update_score()

func _on_player_died() -> void:
	#self.paused = true
	pause_title.text = Died_mssg
	

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("pause") and pause_title.text != Died_mssg:
		self.paused = not self.paused
		scene_tree.set_input_as_handled()


func update_score() -> void:
	score.text = "Score : %s" % PlayerData.score

func set_paused(value: bool) -> void:
	paused = value
	scene_tree.paused = value
	paused_overlay.visible = value


