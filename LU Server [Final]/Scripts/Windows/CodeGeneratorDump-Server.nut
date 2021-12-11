function GeneratorTasks(Player) {
	CreateWindow(Player, ScreenPos_x[Player.ID]/2-150, ScreenPos_y[Player.ID]/2-50, ScreenPos_x[Player.ID] / ScreenPos_y[Player.ID] + 100, ScreenPos_x[Player.ID] / ScreenPos_y[Player.ID] + 50, "Script Generator", true,  10, 10, 10, true, 100)
	CreateLabel(Player, "Cancle", "Cancle", "Script Generator", 0, 0, 60, 20, 255, 255, 255 )
	
	CreateButton(Player, "Cancle", "Cancle", "Script Generator", 150, 0, 60, 20)
	
	//CreateLabel(Player, "GetInCar_Bool", "Add Get in car bool", "Script Generator", 0, 50, 60, 20, 255, 255, 255 )
	//CreateButton(Player, "GetInCarBool", "Confirm", "Script Generator", 170, 50, 60, 20)
	
	//CreateLabel(Player, "Finish_Script", "Complete gamemode", "Script Generator", 0, 100, 60, 20, 255, 255, 255 )
	//CreateButton(Player, "FinishScript", "Confirm", "Script Generator", 170, 100, 60, 20)
	
	//CreateLabel(Player, "Close_ScriptEditor", "For help", "Script Generator", 0, 150, 60, 20, 255, 255, 255 )
	//CreateButton(Player, "CloseScriptEditor", "Confirm", "Script Generator", 170, 150, 60, 20)
}

//--------------------------
