extends Area2D

func _on_ObjectiveArea_body_entered(body: CharacterBody2D):
	if (body.name == "BlueShip") or (body.name == "GreenShip"):
		print("Reached objective!")
