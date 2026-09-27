extends Node

@onready var Hide = $"HideandShowTest"
var stats = {
  "party": {
	"Mira": {
	  "MaxHp": 20,
	  "HP": 20,
	  "FP": 10,
	  "POW": 7,
	  "ATK": 1,
	  "DEF": 3
		}
	}
}
var estats = {
  "enemies": {
	"PaperGoomba": {
	  "MaxHP": 5,
	  "HP": 5,
	  "POW": 2,
	  "ATK": 1,
	  "DEF": 0
		}
	}
}

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print(stats.party.Mira.HP)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_button_down() -> void:
	Hide.visible = true

func _input(event):
	if event.is_action_pressed("Back"):
		Hide.visible = false
