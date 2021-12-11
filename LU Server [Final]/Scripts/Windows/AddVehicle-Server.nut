function SpawnVehicleFunction(Player) { 
	CreateWindow(Player, ScreenPos_x[Player.ID]/2,ScreenPos_y[Player.ID]/2, 450, 90, "Main Vehicle", true,  10, 10, 10 , false, 100);
	CreateLabel(Player, "ManualVehicleLabel", "Enter the vehicle model:", "Main Vehicle", 0, 0, 60, 20, 255, 255, 255 );
	CreateButton(Player, "VehicleSpawner", "Confirm", "Main Vehicle", 380, 0, 60, 20);
	CreateBox(Player, "VehicleModel", "Main Vehicle", 200, 0, 60, 20);
	CreateButton(Player, "VehicleModelListDown", "<", "Main Vehicle", 270, 0, 20, 20);
	CreateButton(Player, "VehicleModelListUP", ">", "Main Vehicle", 295, 0, 20, 20);
	CreateButton(Player, "Main_Vehicle", "Accept", "Main Vehicle", 380, 30, 60, 20) 
	CreateCheckBox(Player, "PointCamera", "Main Vehicle", 10, 30, 20, 20)
	CreateLabel(Player, "Vehicle3", "Point Camera Feature On/Off?", "Main Vehicle", 30, 30, 60, 20, 255, 255, 255)
	CreateLabel(Player, "Vehicle4", "Add Message for player?", "Main Vehicle", 30, 60, 60, 20, 255, 255, 255)
	CreateCheckBox(Player, "MessageForPlayer", "Main Vehicle", 10, 60, 20, 20)
}


/*
for i = 50,1,-1
do
   doKeyPress(VK_W) 
end*/