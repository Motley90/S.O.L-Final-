//--------------------------------------------------------------------------

//String Buffer, Add player specific for multiple players using the editor
MyBuffer <- [""]
MySlots <- 0;

//--------------------------------------------------------------------------

function CompleteOldSlot() { 
	MyBuffer.push("			Slot++;\n 			return true;\n		}\n"); 
}
//Register from client side editor
function AddNewSlot() {
  MyBuffer.push("		if (Slot == " + MySlots + ") { \n");
  MySlots++;
}

//Register from client side editor
function AddToSlot(Code) {
  MyBuffer.push("				" + Code + "\n");
}
TempBlip
//Register from client side editor
function FinishScriptFile() {
  MyBuffer.push("		Slot[Player.ID] = 0;\n		GetInCar[Player.ID] = false\n		GetInPickup[Player.ID] = false \n		GetInSphere[Player.ID] = false \n	")
  MyBuffer.push("if (FindVehicle(TempVehicle[Player.ID]) != -1 ) { \n if (Player.Vehicle = FindVehicle(TempVehicle[Player.ID])) Player.RemoveFromVehicle() \n FindVehicle(TempVehicle[Player.ID]).Remove() \n}\n")
  MyBuffer.push("if (FindPickup(TempPickup[Player.ID]) != -1 ) { \n FindPickup(TempPickup[Player.ID]).Remove() \n}\n")
  MyBuffer.push("if (FindSphere(TempSphere[Player.ID], Player) != -1 ) { \n FindSphere(TempSphere[Player.ID], Player).Remove() \n}\n")
  MyBuffer.push("TempPickup[Player.ID] = -1; \n TempSphere[Player.ID] = -1; \n TempVehicle[Player.ID] = -1; \n")
  MyBuffer.push("	})\n});");
  	MyBuffer.push("function CreatePlayerSphere(Player) {\n local sphere =   CreateClientSphere(Vector(0, 0, 0), 5.00, Colour( 0, 0, 255 ), Player )		\nTempSphere[Player.ID] = sphere.ID}");

}

//Register from client side editor
function WriteFromMemory() {
	local myfiles = file(FileCapture(), "wb+"), i = 0;
	while (i != MyBuffer.len()) {
		foreach(idx, byte in MyBuffer[i]) {
			if (byte) myfiles.writen(byte, 'b');
		}
		i++;
	}
  MySlots = 0
  MyBuffer.clear();
}

function StartFileBuffer(FileID) {
	MyBuffer.push("//"+Today()+"\nLoadedFuncs.rawset(\""+FileID+ "\", function(Player) {\n");
	MyBuffer.push("	PlayerFunc.rawset(Player, function(Player, Slot) {\n")
}

local PlayerFunc = {}, LoadedFuncs = {}
