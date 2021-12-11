////////////////////////////////////////////////////
/*			Server GUI Storage                    */
/*			Version: Demo                         */
/*			Build: Not for Port                   */
/*			Coding: Motley						  */
/*			Multiplayer: LU 					  */
////////////////////////////////////////////////////

ScreenPos_x <- array(GetMaxPlayers(), 0);
ScreenPos_y <- array(GetMaxPlayers(), 0);

RegisterRemoteFunc("BoxMe")
RegisterRemoteFunc("GetBoxMessage")
RegisterRemoteFunc("LaunchWindow")
RegisterRemoteFunc("SWindow")
RegisterRemoteFunc("SendBoxText")

function ScreenSettings(Posx, Posy, Player) {
	ScreenPos_x[Player.ID] = Posx;
	ScreenPos_y[Player.ID] = Posy;
	Message("Player " + Player + "; resolution: " + Posx + "x" + Posy)
}

function CreateWindow(Player, PosX, PosY, SizeX, SizeY, TitleText, CanMove, R, G, B, Showing, AlphaChannel) {
  CallClientFunc( Player, "Windows/MainObjectives-Client.nut", "AddWindow", PosX, PosY, SizeX, SizeY, TitleText, CanMove, R, G, B, Showing, AlphaChannel)
}
function CreateLabel(Player, Label, LabelText, Window, PosX, PosY, SizeX, SizeY, R, G, B) {
  CallClientFunc( Player, "Windows/MainObjectives-Client.nut", "AddLabel", Label, LabelText, Window, PosX, PosY, SizeX, SizeY, R, G, B)
}
function CreateButton(Player, ButtonFunction, ButtonText, Window, PosX, PosY, SizeX, SizeY) {
  CallClientFunc( Player, "Windows/MainObjectives-Client.nut", "AddButton", ButtonFunction, ButtonText, Window, PosX, PosY, SizeX, SizeY)
}
function CreateBox(Player, Box, Window, PosX, PosY, SizeX, SizeY) { 
	CallClientFunc( Player, "Windows/MainObjectives-Client.nut", "AddBox", Box, Window, PosX, PosY, SizeX, SizeY)
}
function CreateCheckBox(Player, Box, Window, PosX, PosY, SizeX, SizeY) {
	CallClientFunc( Player, "Windows/MainObjectives-Client.nut", "AddCheckBox", Box, Window, PosX, PosY, SizeX, SizeY)
}
//-----------------------------------------------------------------------------------------------------------------------
function TestMe(Player) { 
	CreateWindow(Player, 0,ScreenPos_y[Player.ID] - 60, ScreenPos_x[Player.ID], 40, "GameMode Maker", true,  10, 10, 10, true, 100)

	CreateButton(Player, "AddSphere", "Sphere", "GameMode Maker", 0, 0, 60, 20)
	
	CreateButton(Player, "VehicleWindow", "Vehicle", "GameMode Maker", 70, 0, 60, 20)
	
	CreateButton(Player, "CameraProgram", "Camera", "GameMode Maker", 140, 0, 60, 20)
	
	CreateButton(Player, "AddActor", "Actor", "GameMode Maker", 210, 0, 60, 20)
	
	CreateButton(Player, "PickupWindow", "Pickup", "GameMode Maker", 280, 0, 60, 20)

	CreateButton(Player, "MessageProgram", "Message", "GameMode Maker", 350, 0, 60, 20)	
	
	CreateButton(Player, "EditorHelp", "Help", "GameMode Maker", 420, 0, 60, 20)	
	
	//CreateButton(Player, "Add_Message", "New Slot", "GameMode Maker", 0, 300, 60, 20)	
	//CreateButton(Player, "Add_Message", "Write", "GameMode Maker", 65, 300, 60, 20)	
	//CreateButton(Player, "Add_Message", "Cancle", "GameMode Maker", 130, 300, 60, 20)	

	SpawnVehicleFunction(Player)
	CameraFunction(Player)
	MessageFunction(Player)
	SpawnPickupFunction(Player) 
	SphereFunction(Player)
	SpawnPlayerFunction(Player)
	//GeneratorTasks(Player)
	
	MissionInterpreter("CreateFile")
	MissionInterpreter("NewSlot")


}
//-----------------------------------------------------------------------------------------------------------------------
function SWindow(WindowTag, Bool, Player) {
	if (!Bool) CallClientFunc( Player, "Windows/MainObjectives-Client.nut", "HandleWindows", "", "Disable", WindowTag);
	else if (Bool) CallClientFunc( Player, "Windows/MainObjectives-Client.nut", "HandleWindows", "Enable", "", WindowTag);
	else if (WindowTag == "All") CallClientFunc( Player, "Windows/MainObjectives-Client.nut", "HandleWindows", "", "Disable", "All");
	CallClientFunc( Player, "Windows/MainObjectives-Client.nut", "HandleWindows", "Enable", "", "Main Editor");
};	



function GetBoxMessage(ButtonFunc, BoxID, Player) {
	CallClientFunc( Player, "Windows/MainObjectives-Client.nut", "SendBoxInput", ButtonFunc, BoxID);
};
function SendBoxText(ButtonFunc, Input, Player) {
	local Type = GetLibrary(ButtonFunc);
	CallClientFunc( Player, "Windows/Add"+Type+"-Client.nut", "BoxInput", Input);
};	
function LaunchWindow(ButtonFunc, Player) { 
	local Type = GetLibrary(ButtonFunc);
	CallClientFunc(Player, "Windows/Add"+Type+"-Client.nut", ButtonFunc);
}
function GetLibrary(Type) {
 	 if (Type == "VehicleWindow") return  "Vehicle";
	 if (Type == "VehicleSpawner") return  "Vehicle";
	 if (Type == "VehicleModelListDown") return  "Vehicle";
	 if (Type == "VehicleModelListUP") return  "Vehicle";
	 if (Type == "Main_Vehicle") return  "Vehicle";
	 
	 if (Type == "CameraProgram") return  "Camera";
	 if (Type == "AddCamera") return  "Camera";
	 
	 if (Type == "AddMessage") return  "Message";
	 if (Type == "MessageProgram") return  "Message";
	 
	 if (Type == "AddSphere") return  "Sphere";
	 if (Type == "Add_Sphere") return  "Sphere";

 	 if (Type == "PickupWindow") return  "Pickup";
	 if (Type == "PickupSpawner") return  "Pickup";
	 if (Type == "ModelListDown") return  "Pickup";
	 if (Type == "ModelListUP") return  "Pickup";
	 if (Type == "Main_Pickup") return  "Pickup";


 	 if (Type == "AddActor") return  "Actor";
	 if (Type == "PlayerSpawner") return  "Actor";
	 if (Type == "PlayerModelListDown") return  "Actor";
	 if (Type == "PlayerModelListUP") return  "Actor";
	 if (Type == "Main_Player") return  "Actor";
}

function onPlayerPart( Player, reason) {
	MissionInterpreter("EndSlot")

	MissionInterpreter("ExecScript")
	
Slot[Player.ID] = 0;
GetInCar[Player.ID] = false;
GetInPickup[Player.ID] = false;
GetInSphere[Player.ID] = false;
TempVehicle[Player.ID] = -1;
TempSphere[Player.ID] = -1;
TempPickup[Player.ID] = -1;
TempPlayer[Player.ID] = -1;
myFunc[Player.ID] = null;

MyBuffer.clear();
MySlots = 0;

local level = ReadIniInteger( "Levels/Levels.ini", Player.Name.tolower(), "Level" );
WriteIniInteger( "Levels/Levels.ini", Player.Name.tolower(), "Level", level + 1 );
}