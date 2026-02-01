extends Node2D

@onready var level: Node2D = $Level
@onready var tile_map0: TileMapLayer = $"Level/Map Design/TileMapLayer Background0"
@onready var tile_map1: TileMapLayer = $"Level/Map Design/TileMapLayer Background1"
@onready var tile_map_arena: TileMapLayer = $"Level/Map Design/TileMapLayer Arena"
@onready var pause_menu: Control = $Pause
var paused = false

# Called when the node enters the scene tree for the first time.



func on_pause() -> void:
	
	#level.modulate = Color("#3f3f3f")
	#tile_map0.modulate = Color("#3f3f3f")
	#tile_map1.modulate = Color("#3f3f3f")
	#tile_map_arena.modulate = Color("#3f3f3f")
	
	if paused:
		pause_menu.hide()
		Engine.time_scale = 1
		level.modulate = Color("#fff")
		tile_map0.modulate = Color("#808080")
		tile_map1.modulate = Color("#808080")
		tile_map_arena.modulate = Color("#fff")
	else:
		pause_menu.show()
		Engine.time_scale = 0
		level.modulate = Color("#3f3f3f")
		tile_map0.modulate = Color("#3f3f3f")
		tile_map1.modulate = Color("#3f3f3f")
		tile_map_arena.modulate = Color("#3f3f3f")
	
	paused = !paused


	
	
