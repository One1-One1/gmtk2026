extends Control


@onready var anim: AnimationPlayer = $"../AnimationPlayer"
@onready var cam: Camera2D = $"../parallaxCam"
@onready var music: AudioStreamPlayer = $"../AudioStreamPlayer"

func _ready():
	Global.stageStart = false
	music.play()

func _on_start_pressed():
	anim.play("camPan")
	
func _on_quit_pressed():
	get_tree().quit()


func startGame():
	Global.stageStart = true
	
