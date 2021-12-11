function SphereFunction(Player) { 
	CreateWindow(Player, ScreenPos_x[Player.ID]/2,ScreenPos_y[Player.ID]/2, 450, 90, "Add Sphere", true,  10, 10, 10 , false, 100)
	CreateLabel(Player, "SpherePos", "Move the Sphere, Confirm when done", "Add Sphere", 0, 0, 60, 20, 255, 255, 255 )
	CreateButton(Player, "Add_Sphere", "Confirm", "Add Sphere", 380, 0, 60, 20)
}


