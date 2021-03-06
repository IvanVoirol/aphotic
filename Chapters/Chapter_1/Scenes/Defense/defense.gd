extends Node2D


onready var rdvPoints: = {
	"elevator": $Background/PassageElevator.targetPosition,
	"ladder": $Background/PassageLadder.targetPosition,
}


func _ready():
	if Data.data.chapter_1.elevator_floor != Data.data.player.scene:
		$Background/PassageElevator.visible = false
		$Background/PassageElevator/CollisionPolygon2D.disabled = true
		$Background/PassageLadder/CollisionPolygon2D.disabled = false


func get_floor_meshes():
	return [$FloorPolygon]
