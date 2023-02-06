extends Node3D

@onready var fps_label: Label = $FPSLabel
@onready var suzanne = $Suzanne
@onready var world_environment = $WorldEnvironment


func _ready() -> void:
	const ROWS = 50
	for i in range(ROWS * ROWS):
		var s: Node3D = suzanne.duplicate()
		s.position = Vector3(i % ROWS, 0, -int(i/ROWS)) * 2
		add_child(s)


func _process(delta: float) -> void:
	fps_label.text = "%d" % Engine.get_frames_per_second()
