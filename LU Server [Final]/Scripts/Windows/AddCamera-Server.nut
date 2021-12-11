function CameraFunction(Player) { 
	CreateWindow(Player, ScreenPos_x[Player.ID]/2,ScreenPos_y[Player.ID]/2, 450, 90, "Add Camera", true,  10, 10, 10 , false, 100)
	CreateLabel(Player, "CameraPos", "Move the Camera, Confirm when done", "Add Camera", 0, 0, 60, 20, 255, 255, 255 )
	CreateButton(Player, "AddCamera", "Confirm", "Add Camera", 380, 0, 60, 20)
}


/*

Register a function the client script can call. '
in this case:

MainObjective-Server [Add Camera] points to this func
This function calls AddCamera() in AddCamera-Client script

*/