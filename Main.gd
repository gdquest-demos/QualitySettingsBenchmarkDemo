extends Node3D

@onready var suzannes_scene = $SuzannesScene


func _ready() -> void:
	if QualitySettings.current_setting_idx == -1:
		QualitySettings.current_setting_idx = 0
	QualitySettings.current_quality_settings.apply_settings(get_viewport(), suzannes_scene.world_environment.environment)


func _unhandled_key_input(event: InputEvent) -> void:
	if event.is_pressed():
		if event.keycode == KEY_1:
			QualitySettings.current_setting_idx = 0
			apply_quality_setting()
		elif event.keycode == KEY_2:
			QualitySettings.current_setting_idx = 1
			apply_quality_setting()
		elif event.keycode == KEY_3:
			QualitySettings.current_setting_idx = 2
			apply_quality_setting()


func apply_quality_setting() -> void:
	QualitySettings.current_quality_settings.apply_settings(get_viewport(), suzannes_scene.world_environment.environment)
