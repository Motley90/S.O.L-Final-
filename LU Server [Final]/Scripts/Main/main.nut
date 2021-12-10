////////////////////////////////////////////////////
/*			Server Mission Editor                 */
/*			Version: Demo                         */
/*			Build: Not for Port                   */
/*			Coding: Motley						  */
/*			MultiPlayer: LU 					  */
////////////////////////////////////////////////////

#11/21/2021

function Today() {
	local Month = date().month + 1, Day = date().day, Year = date().year;
	return(Month+"/"+Day+"/"+Year)
}

function onScriptLoad() {
	LoadModule("lu_ini")

	print(Today())
	/*
		Code generator for the client editor 
		Add Int Main function on loading
	*/
	dofile("Scripts/Main/Missions/Data/Code-Generator.nut");
	dofile("Scripts/Main/Missions/Data/Mission-Functions.nut", true); // For using with code generator, GetInCar etc
	
	/*
		Mission editor for creating scripts
		Merge moving entitys etc over to this script
	*/
	dofile("Scripts/Main/Missions/Data/Mission-Editor/Contorls.nut", true); // Movement bindings
	//dofile("Scripts/Main/Missions/Data/Mission-Editor/Data-Statistics.nut"); // Object storage
	//dofile("Scripts/Main/Missions/Data/Mission-Editor/Mathmatix.nut"); // Movement, Roration etc
	dofile("Scripts/Main/Missions/Data/Mission-Editor/Server-GUI.nut", true); // Calls GUI functions like creating Window, Size, Position to the client funcs
	//dofile("Scripts/Main/Missions/Data/Mission-Editor/Code-Generator.nut"); //in xml create this script. This is for our main GUI functions
	dofile("Scripts/Windows/MainObjectives-Server.nut", true);
	dofile("Scripts/Windows/AddVehicle-Server.nut", true);
	dofile("Scripts/Windows/AddCamera-Server.nut", true);
	dofile("Scripts/Windows/AddMessage-Server.nut", true);
	dofile("Scripts/Windows/AddPickup-Server.nut", true);
	dofile("Scripts/Windows/AddSphere-Server.nut", true);
	dofile("Scripts/Windows/AddActor-Server.nut", true);
	//dofile("Scripts/Windows/CodeGeneratorDump-Server.nut", true);
	/* 
		Add handlers inside of both scripts. Probably a folder called handlers "Vehicle"< "Camera", "Pickup", "Sphere" scripts located inside
	*/
	RegisterRemoteFunc("SWindow");
	RegisterRemoteFunc("ScreenSettings")
NewTimer( "MissionHandler", 1000, 0 );

}

Slot <- array(GetMaxPlayers(),0);
GetInCar <- array(GetMaxPlayers(),false);
GetInPickup <- array(GetMaxPlayers(),false);
GetInSphere <- array(GetMaxPlayers(),false);
TempVehicle <- array(GetMaxPlayers(),-1);
TempSphere <- array(GetMaxPlayers(),-1);
TempPickup <- array(GetMaxPlayers(),-1);
TempPlayer <- array(GetMaxPlayers(),-1);
Jobbing <- array(GetMaxPlayers(),false);
myFunc <- array(GetMaxPlayers(), null);

setSkin <- array(GetMaxPlayers(), -1)
setAngle <- array(GetMaxPlayers(), -1)
TempBlip <- array(GetMaxPlayers(),-1);
local PlayerList = {}

function MissionHandler() { 
  foreach(idx, player in PlayerList) {
	local Player = FindPlayer(0)
	if (Player) {
	if (setSkin[Player.ID] != -1 ) {
		Player.Skin = setSkin[Player.ID], setSkin[Player.ID] = -1;
		return true;
	}

	if (setAngle[Player.ID] != -1 ) {
		Player.Angle = setAngle[Player.ID];
		setAngle[Player.ID] = -1;
		return true;
	}
  

	if (Jobbing[Player.ID] == false ) {  
		Jobbing[Player.ID] = true;

		Slot[Player.ID] = 0;
		GetInCar[Player.ID] = false
		GetInPickup[Player.ID] = false 
		GetInSphere[Player.ID] = false 
		if (FindVehicle(TempVehicle[Player.ID]) != -1 ) { 
			if (Player.Vehicle) Player.RemoveFromVehicle();
			FindVehicle(TempVehicle[Player.ID]).Remove() 
			TempVehicle[Player.ID] = -1
		}
		if (FindPickup(TempPickup[Player.ID]) != -1 ) { 
			FindPickup(TempPickup[Player.ID]).Remove() 
			TempPickup[Player.ID] = -1
		}
		if (FindSphere(TempSphere[Player.ID], Player) != -1 ) { 
			FindSphere(TempSphere[Player.ID], Player).Remove() 
			TempSphere[Player.ID] = -1;
		}
		TempPickup[Player.ID] = -1; 
		TempSphere[Player.ID] = -1; 
		TempVehicle[Player.ID] = -1;
		// Call a new mission here
		local level = ReadIniInteger( "Levels/Levels.ini", Player.Name.tolower(), "Level" );
		WriteIniInteger( "Levels/Levels.ini", Player.Name.tolower(), "Level", level + 1 );
		Read(Player) 
		
		// This wont get called now
		Jobbing[Player.ID] = true;
	}
	}
}
}
function onPlayerJoin(Player) { 
Jobbing[Player.ID] = true;

}
function onPlayerSpawn(Player, iclass) { 
  PlayerList.rawset(Player.ID, Player)
  ClientEntity[Player.ID] = myEntity()
  ClientEntity[Player.ID].Active = true;
  TestMe(Player)
  Read(Player)
  //myFunc[Player.ID](Player, Slot[Player.ID]);

  print(Slot[Player.ID])
  

}
function onPlayerCommand( pPlayer, szCommand, szText )
{
	if ( szCommand == "anim" )
	{
		if ( szText ) pPlayer.SetAnim( szText.tointeger() );
	}
	
	return 1;
}
  

function onVehicleWrecked( vehicle )
{
	// do something here
}


function onPlayerEnterSphere( Player, sphere ) {
	try {
		if (GetInSphere[Player.ID] == true) {
			if (Player) print("entered" + sphere.ID)
			if (sphere.ID == TempSphere[Player.ID]) {
								Slot[Player.ID] ++;

				myFunc[Player.ID](Player, Slot[Player.ID]);
			}
		}
	} 
	catch(e) { 

	}
	  print(Slot[Player.ID])

}

function onPickupPickedUp( Player, pickup ) {
	try {
		if (GetInPickup[Player.ID] == true) {
			if (pickup.ID == TempPickup[Player.ID]) {
				Slot[Player.ID] ++;

				myFunc[Player.ID](Player, Slot[Player.ID]);
			}		
		}
	}
	catch(e) { 

	}
}
 
CreatePickup( 1384, Vector( 112.37, -1002.06, 26.23 ) )

//---------------------------------------------------------------------------
function onPlayerEnteredVehicle( Player, vehicle, seat ) { 
	try {
		if (GetInCar[Player.ID] == true) {
			if (vehicle.ID == TempVehicle[Player.ID]) {
				Slot[Player.ID] ++;
				myFunc[Player.ID](Player, Slot[Player.ID]);
				
			}
		}
	} 
	catch(e) { 

	}
	  print(Slot[Player.ID])
}

