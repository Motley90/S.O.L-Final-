function SpawnPlayerFunction(Player) { 
	CreateWindow(Player, ScreenPos_x[Player.ID]/2,ScreenPos_y[Player.ID]/2, 450, 90, "Main Player", true,  10, 10, 10 , false, 100);
	CreateLabel(Player, "ManualPlayerLabel", "Enter the Player model:", "Main Player", 0, 0, 60, 20, 255, 255, 255 );
	CreateButton(Player, "PlayerSpawner", "Confirm", "Main Player", 380, 0, 60, 20);
	CreateBox(Player, "PlayerModel", "Main Player", 200, 0, 60, 20);
	CreateButton(Player, "PlayerModelListDown", "<", "Main Player", 270, 0, 20, 20);
	CreateButton(Player, "PlayerModelListUP", ">", "Main Player", 295, 0, 20, 20);
	CreateButton(Player, "Main_Player", "Accept", "Main Player", 380, 30, 60, 20) 
	CreateCheckBox(Player, "PointCamera", "Main Player", 10, 30, 20, 20)
	CreateLabel(Player, "Player3", "Point Camera Feature On/Off?", "Main Player", 30, 30, 60, 20, 255, 255, 255)
	CreateLabel(Player, "Player4", "Add Message for player?", "Main Player", 30, 60, 60, 20, 255, 255, 255)
	CreateCheckBox(Player, "MessageForPlayer", "Main Player", 10, 60, 20, 20)
}

