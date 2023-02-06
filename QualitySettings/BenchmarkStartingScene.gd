extends Control

@onready var benchmark: QualitySettingsBenchmark = $Benchmark


func _ready() -> void:
	QualitySettings.setup()
	
	if QualitySettings.current_setting_idx == -1:
		const TARGET_SPF = 0.016
		const BENCHMARK_DIFFICULTY = 1.0
		
		await benchmark.benchmark(QualitySettings.quality_settings_resources)
		var optimal_setting_idx = benchmark.get_optimal_result(TARGET_SPF, BENCHMARK_DIFFICULTY)
		QualitySettings.current_setting_idx = optimal_setting_idx
		QualitySettings.save_on_user()
	
	get_tree().change_scene_to_file("res://Main.tscn")
