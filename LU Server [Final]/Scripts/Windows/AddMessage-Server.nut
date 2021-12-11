function MessageFunction(Player) { 
	CreateWindow(Player, ScreenPos_x[Player.ID]/2,ScreenPos_y[Player.ID]/2, 450, 90, "Add Text", false,  10, 10, 10 , false, 100);
	CreateLabel(Player, "vTextLabel", "Text When Entered Vehicle:", "Add Text", 0, 0, 60, 20, 255, 255, 255 );
	CreateButton(Player, "AddMessage", "Confirm", "Add Text", 380, 0, 60, 20);
	CreateBox(Player, "AddMessage", "Add Text", 200, 0, 170, 20);
}