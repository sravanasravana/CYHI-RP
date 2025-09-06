extends Node2D


const in_edit_mode: bool = false
var current_level_name = "SONG 1"

var level_info = {
	"SONG 1" = {
		"fk_times": "[[1], [2], [3], [4]]"
	}
}

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if in_edit_mode:
		pass
