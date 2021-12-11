function SpawnPickupFunction(Player) { 
	CreateWindow(Player, ScreenPos_x[Player.ID]/2,ScreenPos_y[Player.ID]/2, 450, 90, "Main Pickup", true,  10, 10, 10 , false, 100);
	CreateLabel(Player, "ManualPickupLabel", "Enter the Pickup model:", "Main Pickup", 0, 0, 60, 20, 255, 255, 255 );
	CreateButton(Player, "PickupSpawner", "Confirm", "Main Pickup", 380, 0, 60, 20);
	CreateBox(Player, "PickupModel", "Main Pickup", 200, 0, 60, 20);
	CreateButton(Player, "ModelListDown", "<", "Main Pickup", 270, 0, 20, 20);
	CreateButton(Player, "ModelListUP", ">", "Main Pickup", 295, 0, 20, 20);
	CreateButton(Player, "Main_Pickup", "Accept", "Main Pickup", 380, 30, 60, 20) 
	CreateCheckBox(Player, "PointCamera", "Main Pickup", 10, 30, 20, 20)
	CreateLabel(Player, "Pickup3", "Point Camera Feature On/Off?", "Main Pickup", 30, 30, 60, 20, 255, 255, 255)
	CreateLabel(Player, "Pickup4", "Add Message for player?", "Main Pickup", 30, 60, 60, 20, 255, 255, 255)
	CreateCheckBox(Player, "MessageForPlayer", "Main Pickup", 10, 60, 20, 20)
}
