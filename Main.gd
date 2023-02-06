extends Node3D

@onready var suzannes_scene = $SuzannesScene


func _ready() -> void:
	print("Chosen setting: %s" % QualitySettings.current_quality_settings.resource_path)
	QualitySettings.current_quality_settings.apply_settings(get_viewport(), suzannes_scene.world_environment.environment)
