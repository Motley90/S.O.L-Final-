local BaseFileName = "Levels/Level_", currentLevel;

function FileCapture() {
	currentLevel = ReadIniInteger( "Levels/LevelBase.ini", "File-ID", "Level" );
	currentLevel++;

	WriteIniInteger( "Levels/LevelBase.ini", "File-ID", "Level", currentLevel );
	return BaseFileName + currentLevel +".nut";
}

function PlayerCompletedTask(Player) { 
  local slot = Slot[Player.ID];
  slot++;
  // Call the new slot
myFunc[Player.ID](Player, slot)
}

function MissionInterpreter(stringFunction, ...) {
	if (stringFunction == "CreateFile" ) {
		local mylevel = ReadIniInteger( "Levels/LevelBase.ini", "File-ID", "Level" )
		StartFileBuffer("Level_" + mylevel);
	}
	
	// If you add then add. If not the function gets nothing
	if (stringFunction == "AddToStart") {
		MyBuffer.push("     " + vargv[0] + "\n");
	}
	
	if (stringFunction == "EndStart") {
		FinishStart();
	}		
	
	//----------------------------------------

	// Slot func
	if (stringFunction == "Main") {
		WriteMissionSlotFunc()
	}
	
	// Writes the new if slot = int, func
	if (stringFunction == "NewSlot") {
		AddNewSlot();
	}
	
	//Adding data to current slot
	if (stringFunction == "DataToSlot") {
		AddToSlot(vargv[0]);
	}
	
	// Finishes the slot that was being worked on by adding the final bracket
	if (stringFunction == "EndSlot") {
		CompleteOldSlot();
	}

	if (stringFunction == "ExecScript") {
		FinishScriptFile()
		WriteFromMemory()
	}
	// Slot func	
	
	//----------------------------------------
}
function SetSkin(Player, skin) { 
 Player.Skin = skin
 print(Player)

}
function SetPlayerPos(Player, x, y, z) { 
	print(Player)
	print(FindPlayer(Player))
	Player.Pos = Vector(x, y, z)
}
ClientCode <- array(GetMaxPlayers())
local MyRootTable = null
LoadedFuncs <- {} 
PlayerFunc <- {};
function Read(Player) {  
local level = ReadIniInteger( "Levels/Levels.ini", Player.Name.tolower(), "Level" );
local myfunc = "Level_" + level;
MyRootTable = loadfile("Levels/Level_" + level + ".nut", true);
MyRootTable()
local RootFuncs = LoadedFuncs.rawget("Level_" + level)
RootFuncs(Player);
myFunc[Player.ID] = PlayerFunc.rawget(Player)
CreatePlayerSphere(Player)
myFunc[Player.ID](Player, 0)

}




