////////////////////////////////////////////////////
/*			Server Controls, Data Statistics      */
/*			Version: Demo                         */
/*			Build: Not for Port                   */
/*			Coding: Motley						  */
/*			Multiplayer: LU 					  */
////////////////////////////////////////////////////
print("Loading-Mission/Entity Editor Script [Controls.nut]");
RegisterRemoteFunc("VehicleListForward");
RegisterRemoteFunc("VehicleListBackward");

RegisterRemoteFunc("PlayerListForward");
RegisterRemoteFunc("PlayerListBackward");

RegisterRemoteFunc("ManualPickupInput");

RegisterRemoteFunc("PickupListForward");
RegisterRemoteFunc("PickupListBackward");

RegisterRemoteFunc("ManualVehicleInput");

RegisterRemoteFunc("ManualPlayerInput");

RegisterRemoteFunc("SpawnEntityType");
	
RegisterRemoteFunc("MoveBackward");
RegisterRemoteFunc("MoveForward");
RegisterRemoteFunc("MoveLeft");
RegisterRemoteFunc("MoveRight");
RegisterRemoteFunc("setMode");
RegisterRemoteFunc("GetCameraPos");
RegisterRemoteFunc("AddMessageForPlayer");
RegisterRemoteFunc("VehicleCreator");

RegisterRemoteFunc("WriteVehicleForPlayer");
RegisterRemoteFunc("MissionInterpreter");


RegisterRemoteFunc("PlayerCreator");
RegisterRemoteFunc("VehicleCreator");
RegisterRemoteFunc("PickupCreator");
RegisterRemoteFunc("SphereCreator");

RegisterRemoteFunc("EditorStatus");



print("Remote Functions Loaded");
	
// Player editor
UsingEditor <- array(GetMaxPlayers(), false)

// Valid vehicles for spawning
local VehicleSpawnerList = [90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 142, 143, 144, 145, 146, 148, 149, 150];


// Valid Pickups for spawning
local PickupSpawnerList = [170, 171, 172, 173, 174, 175, 176, 177, 178, 180, 181, 1413, 1392, 1391, 1389, 1384, 1383, 1366, 1364, 1363, 1362, 1361, 1351, 1343, 1340, 1339, 1324, 1323, 1321, 1319];
   
//-----------------------------------------


function MoveForward(Player) {
	local Editor = ClientEntity[Player.ID];
    if (!Player.Spawned) return false;
  if (Editor.CurrentEntity != null) {	
    switch( Editor.EditorMethod ) {
	// Y movement
	case 0:
	print(Editor.CurrentEntity)
	    CameraPos( Player, Editor.CurrentEntity)
		MoveEntityTo( Editor.EntityType, 0, Editor.EditorSensitivity, 0, Player);
		break;
	// Z movement
	case 1:
	print("Test2")
		CameraPos( Player, Editor.CurrentEntity)
		MoveEntityTo( Editor.EntityType, 0, 0, Editor.EditorSensitivity, Player );

		break;
	// Y rotation
	case 2:
		// Copy camera as a universal angle update method
		if ( Editor.CameraDegree - Editor.EditorSensitivity < 0 ) {
			Editor.CameraDegree = 360;
					CameraPos( Player, Editor.CurrentEntity)

		}	
		else {
			Editor.CameraDegree = Editor.CameraDegree - Editor.EditorSensitivity;
			RotateEntityTo( Editor.EntityType, Editor.EditorSensitivity, Player);
			CameraPos( Player, Editor.CurrentEntity)
		}
		break;
	// Z rotation
	case 3:
		// Copy camera as a universal angle update method
		if ( Editor.CameraDegree + Editor.EditorSensitivity < 0 )
			Editor.CameraDegree = 360;
		
			Editor.CameraDegree = Editor.CameraDegree + Editor.EditorSensitivity;
			RotateEntityTo( Editor.EntityType, -Editor.EditorSensitivity, Player);
			CameraPos( Player, Editor.CurrentEntity )

		break;
	// Camera left
	case 4:
		Editor.CameraDistance = Editor.CameraDistance - Editor.EditorSensitivity;		
		CameraPos(Player, Editor.CurrentEntity)
		break;
	}
  }
}

print("Move Forward function loaded")

function MoveBackward(Player) {
	local Editor = ClientEntity[Player.ID];
    if (!Player.Spawned) return false;
  if (Editor.CurrentEntity != null) {	
	switch( Editor.EditorMethod ) {
	// Y movement
	case 0:
		MoveEntityTo( Editor.EntityType, 0, -Editor.EditorSensitivity, 0, Player );
		CameraPos( Player, Editor.CurrentEntity)

		break;
	// Z movement
	case 1:
		print("Test4")

		MoveEntityTo( Editor.EntityType, 0, 0, -Editor.EditorSensitivity, Player );
		CameraPos( Player, Editor.CurrentEntity)

		break;
	// Y rotation
	case 2:
		// Copy camera as a universal angle update method
		if ( Editor.CameraDegree + Editor.EditorSensitivity < 0  ) {
			Editor.CameraDegree = 360;
					CameraPos( Player, Editor.CurrentEntity)
		}
		else {
			Editor.CameraDegree = Editor.CameraDegree + Editor.EditorSensitivity;
		RotateEntityTo( Editor.EntityType, Editor.EditorSensitivity, Player);
				CameraPos( Player, Editor.CurrentEntity)
		}
		break;
	// Z rotation
	case 3:
		// Copy camera as a universal angle update method
		// Copy camera as a universal angle update method
		if ( Editor.CameraDegree + Editor.EditorSensitivity < 0 ) 
			Editor.CameraDegree = 360;
		else {
			Editor.CameraDegree = Editor.CameraDegree - Editor.EditorSensitivity
			RotateEntityTo( Editor.EntityType, Editor.EditorSensitivity, Player);
		CameraPos( Player, Editor.CurrentEntity)
		}
		break;
	// Camera right
	case 4:
		Editor.CameraDistance = Editor.CameraDistance + Editor.EditorSensitivity;
		CameraPos(Player, Editor.CurrentEntity)
		
		break;
	}
  }
}

print("Move Backward function loaded")

function MoveLeft(Player) {
	local Editor = ClientEntity[Player.ID]
    if (!Player.Spawned) return false;
  if (Editor.CurrentEntity != null) {	
	switch( Editor.EditorMethod ) {
	// X movement
	case 0:
		MoveEntityTo( Editor.EntityType, -Editor.EditorSensitivity, 0, 0, Player );
				CameraPos( Player, Editor.CurrentEntity)

		break;
	// Z movement
	case 1:
		MoveEntityTo( Editor.EntityType, 0, 0, Editor.EditorSensitivity, Player );
		CameraPos( Player, Editor.CurrentEntity)

		break;
	// X rotation
	case 2:
		// Copy camera as a universal angle update method
		if ( Editor.CameraDegree - Editor.EditorSensitivity < 0 ) {
			Editor.CameraDegree = 360;
					CameraPos( Player, Editor.CurrentEntity)
		}
		else {
			Editor.CameraDegree = Editor.CameraDegree - Editor.EditorSensitivity;
		RotateEntityTo( Editor.EntityType, -Editor.EditorSensitivity, Player);
				CameraPos( Player, Editor.CurrentEntity)
		}
		break;
	// Z rotation
	case 3:
		// Copy camera as a universal angle update method
		if ( Editor.CameraDegree + Editor.EditorSensitivity < 0 ) { 
			Editor.CameraDegree = 360;
					CameraPos( Player, Editor.CurrentEntity)
		}
		else {
			Editor.CameraDegree = Editor.CameraDegree + Editor.EditorSensitivity
			RotateEntityTo( Editor.EntityType, -Editor.EditorSensitivity, Player);
			CameraPos( Player, Editor.CurrentEntity)
		}
		break;
	// Camera right
	case 4:
		if ( Editor.CameraDegree - Editor.EditorSensitivity < 0 ) {
			Editor.CameraDegree = 360;
			CameraPos(Player, Editor.CurrentEntity)
		}
		else {
			Editor.CameraDegree = Editor.CameraDegree - Editor.EditorSensitivity;
			CameraPos(Player, Editor.CurrentEntity)
		}
		break;
	}
  }
}

print("Move Left function loaded")

function MoveRight(Player) {
	local Editor = ClientEntity[Player.ID];
  if (!Player.Spawned) return false;
  if (Editor.CurrentEntity != null) {	
	switch( Editor.EditorMethod ) {
	// X movement
	case 0:
		MoveEntityTo( Editor.EntityType, Editor.EditorSensitivity, 0, 0, Player );
				CameraPos( Player, Editor.CurrentEntity)

		break;
	// Z movement
	case 1:
		MoveEntityTo( Editor.EntityType, 0, 0, -Editor.EditorSensitivity, Player );
		CameraPos( Player, Editor.CurrentEntity)
		break;
	// X rotation
	case 2:
		// Copy camera as a universal angle update method
		if ( Editor.CameraDegree + Editor.EditorSensitivity < 0  ) {
			Editor.CameraDegree = 360;
					CameraPos( Player, Editor.CurrentEntity)
		}
		else {
			Editor.CameraDegree = Editor.CameraDegree + Editor.EditorSensitivity;
		RotateEntityTo( Editor.EntityType, Editor.EditorSensitivity, Player);
				CameraPos( Player, Editor.CurrentEntity)
		}
		break;
	// Z rotation
	case 3:
		// Copy camera as a universal angle update method
		if ( Editor.CameraDegree + Editor.EditorSensitivity < 0 ) 
			Editor.CameraDegree = 360;
		else {
			Editor.CameraDegree = Editor.CameraDegree - Editor.EditorSensitivity
			RotateEntityTo( Editor.EntityType, Editor.EditorSensitivity, Player);
		CameraPos( Player, Editor.CurrentEntity)
		}
		break;
	// Camera 
	case 4:
		if ( Editor.CameraDegree + Editor.EditorSensitivity < 0 ) {
			Editor.CameraDegree = 360;
			CameraPos(Player, Editor.CurrentEntity)
		}
		else {
			Editor.CameraDegree = Editor.CameraDegree + Editor.EditorSensitivity;
			CameraPos(Player, Editor.CurrentEntity)
		}
		break;
	}
  }
}

print("Move Right function loaded")

function setMode( Mode, Player ) {
	ClientEntity[Player.ID].EditorMethod = Mode;
}

//-------------------------------------

// Storage of IDs. Entitys have a max of one per slot for now
ClientEntity <- array(GetMaxPlayers());
class myEntity {
  Vehicle = -1;
  VehicleSpawnerID = -1;
  PickupSpawnerID = -1;
  
  Player = -1;
  
  Sphere = -1;
  Pickup = -1;
  
  EntityType = "";
  EditorMethod = 0;
  CurrentEntity = null;
  EditorSensitivity = 0.1;
  
  CameraDistance = 1;
  CameraDegree = 0;
  CamPosition = array(2, "");
  
  Active = false;
}

print("Control class loaded");

function DegreesToRadians(deg)
{
 local rad = deg * PI / 180.0;
 return rad;
}
function EditorStatus(Player, Status) {
	Player.Frozen = Status;
	if (!Status) RestoreCamera(Player)
	ClientEntity[Player.ID].Active = Status;
	local Editor = ClientEntity[Player.ID];
}

print("Editor status loaded");

function CameraPos( Player, Entity ) {
	local Editor = ClientEntity[Player.ID],  behindPos =  Vector(Get2DLookAtPos( Entity.Pos, Editor.CameraDegree, -Editor.CameraDistance ).x, Get2DLookAtPos( Entity.Pos,  Editor.CameraDegree, -Editor.CameraDistance  ).y, Entity.Pos.z + 10.0);
	SetCameraMatrix( Player, behindPos, Entity.Pos );

	Editor.CamPosition[0] = ""+behindPos.x +","+ behindPos.y +"," + behindPos.z+"";
	Editor.CamPosition[1] = ""+Entity.Pos.x+"," +Entity.Pos.y+", "+Entity.Pos.z+""; 
	//print("AddCamera(" + Editor.CamPosition[0] + ", " + Editor.CamPosition[1] + " );" )
	//print(GetCameraPos(Player))
}

function GetCameraPos(Player) { 
	local Editor = ClientEntity[Player.ID];
	local playerCamera = "AddCamera(" + Editor.CamPosition[0] + "," + Editor.CamPosition[1] + ")"; 
	//MissionInterpreter("DataToSlot", playerCamera );
	print(playerCamera)
}

// Result: The current price is 17.36 per ounce

function PlayerCreator(Player ) {
	local Editor = ClientEntity[Player.ID], TempPlayerData = FindPlayer(Editor.Player);
	local player = "Player.Pos = ::Vector(" + TempPlayerData.Pos.x + ", " + TempPlayerData.Pos.y + ", " + TempPlayerData.Pos.z + ")";
	local PlayerAngle = "setAngle[Player.ID] = " + TempPlayerData.Angle + ";";
	local PlayerSkin = "setSkin[Player.ID] = " + TempPlayerData.Skin + ";";
	
	MissionInterpreter("DataToSlot", player );
	MissionInterpreter("DataToSlot", PlayerAngle );
	MissionInterpreter("DataToSlot", PlayerSkin );
}

function VehicleCreator(Player ) {
	local Editor = ClientEntity[Player.ID], TempVehicleData = FindVehicle(Editor.CurrentEntity.ID);
	Player.Vehicle = TempVehicleData
	  NewTimer("StartVehicle", 1000, 1)
	  function StartVehicle() {
	local vehicle = "local vehicle = ::CreateVehicle( " + Player.Vehicle.Model + ", Vector(" + Player.Vehicle.Pos.x + ", " + Player.Vehicle.Pos.y + ", " + Player.Vehicle.Pos.z + "), -1, -1 );";
	local VehAngle = "vehicle.Angle = " + Player.Vehicle.Angle + ";";
	local iD = " TempVehicle[Player.ID] = vehicle.ID;";
	local Objective = " GetInCar[Player.ID] = true;";
  
	MissionInterpreter("DataToSlot", vehicle );
	MissionInterpreter("DataToSlot", VehAngle );
	MissionInterpreter("DataToSlot", iD );
	MissionInterpreter("DataToSlot", Objective );
	MissionInterpreter("EndSlot")	
	MissionInterpreter("NewSlot" );
	
	// The new slot is called clear the objective
	Objective = " GetInCar[Player.ID] = false;";
	iD = "::FindVehicle( TempVehicle[Player.ID]).RespawnTime = 99999999;"
	MissionInterpreter("DataToSlot", Objective );
	}
}


function SphereCreator(Player ) {
	local Editor = ClientEntity[Player.ID], TempSphereData = FindSphere(Editor.Sphere, Player);
	local sphere = "FindSphere(TempSphere[Player.ID], Player).Pos = Vector(" + TempSphereData.Pos.x + ", " + TempSphereData.Pos.y + ", " + TempSphereData.Pos.z + ");";
	local Objective = " GetInSphere[Player.ID] = true;";
	local blip = "TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(" + TempSphereData.Pos.x + ", " + TempSphereData.Pos.y + ", " + TempSphereData.Pos.z + ") );\n TempBlip[Player.ID] = TempBlip[Player.ID].ID"
	MissionInterpreter("DataToSlot", sphere );
	MissionInterpreter("DataToSlot", Objective );
	MissionInterpreter("DataToSlot", blip );
	MissionInterpreter("EndSlot")	
	MissionInterpreter("NewSlot" );
	
	// The new slot is called clear the objective
	Objective = " GetInSphere[Player.ID] = false;";
	sphere = "::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);"
	blip = "::FindBlip( TempBlip[Player.ID], Player).Remove();"
	MissionInterpreter("DataToSlot", Objective );
	MissionInterpreter("DataToSlot", sphere );	
	MissionInterpreter("DataToSlot", blip );
}

function PickupCreator(Player) {
	local Editor = ClientEntity[Player.ID], TempPickupData = FindPickup(Editor.Pickup);
	local pickup = "local pickup = ::CreatePickup("+TempPickupData.Model+", Vector(" + TempPickupData.Pos.x + ", " + TempPickupData.Pos.y + ", " + TempPickupData.Pos.z + "))";
	local iD = "TempPickup[Player.ID] = pickup.ID;";
	local Objective = "GetInPickup[Player.ID] = true;";
  
	MissionInterpreter("DataToSlot", pickup );
	MissionInterpreter("DataToSlot", iD );
	MissionInterpreter("DataToSlot", Objective );
	MissionInterpreter("EndSlot")
	MissionInterpreter("NewSlot" );
	
	// The new slot is called clear the objective
	Objective = " GetInPickup[Player.ID] = false;";
	iD = "::FindPickup( TempPickup[Player.ID]).Remove();"
	MissionInterpreter("DataToSlot", Objective );
	MissionInterpreter("DataToSlot", iD );
	
}


function AddMessageForPlayer(Player, Text){
	local message = "::SmallMessage(Player,\"" + Text + "\", 2000, 1)\n";
	MissionInterpreter("DataToSlot", message )
}


print("Camera Position function loaded");
//-------------------------------------

// Moving entity left, right, forward, backwards
function MoveEntityTo(entity, x, y, z, Player ) {
	local pickup, sphere, vehicle, Editor = ClientEntity[Player.ID]
	if (entity == "Vehicle" ) { 
		if ( FindVehicle(Editor.Vehicle) != -1 )  {
			
			vehicle = FindVehicle(Editor.Vehicle);
			vehicle.Pos = Vector( vehicle.Pos.x + x, vehicle.Pos.y + y, vehicle.Pos.z + z );
			vehicle.Angle = Editor.CameraDegree; 
	  
			SmallMessage(Player, "Moving: " + entity + ", To position: Vector(" + vehicle.Pos + ");", 2000, 1)
		}
	}
	
	if (entity == "Pickup" ) { 
		if ( Editor.Pickup != -1 )  {
			
			pickup = FindPickup(Editor.Pickup);
			local pickupPos = Vector( pickup.Pos.x + x, pickup.Pos.y + y, pickup.Pos.z + z ), pickupModel = pickup.Model;
			
			local pickupRefresh = CreatePickup(pickupModel, pickupPos);
			pickup.Remove()
			Editor.Pickup = pickupRefresh.ID
			
			SmallMessage(Player, "Moving: " + entity + ", To position: Vector(" + pickup.Pos + ");", 2000, 1)
		}
	}
	
	if (entity == "Sphere" ) { 
		if ( FindSphere(Editor.Sphere, Player) != -1 )  {
			
			sphere = FindSphere(Editor.Sphere, Player);
			sphere.Pos = Vector( sphere.Pos.x + x, sphere.Pos.y + y, sphere.Pos.z + z );
			SmallMessage(Player, "Moving: " + entity + ", To position: Vector(" + sphere.Pos + ");", 2000, 1)
		}
	}
	
	if (entity == "Player" ) { 
		if ( FindPlayer(Editor.Player) != -1 )  {
			
			Editor.Player = Player.ID
			Player.Pos = Vector( Player.Pos.x + x, Player.Pos.y + y, Player.Pos.z + z );
			Player.Angle = Editor.CameraDegree; 
			
			SmallMessage(Player, "Moving: " + entity + ", To position: Vector(" + Player.Pos + ");", 2000, 1)
		}
	}
}


print("Move Entity function loaded");

//-------------------------------------

// Part of GUI vehicle changer
function VehicleListForward(Player) { 
	local Editor = ClientEntity[Player.ID];
	Editor.VehicleSpawnerID++;
	if ( Editor.VehicleSpawnerID == VehicleSpawnerList.len()) Editor.VehicleSpawnerID = 0;

	local model = VehicleSpawnerList[Editor.VehicleSpawnerID];
	SpawnEntityType("Vehicle", model, Player );
}

print("Vehicle Button Forward function loaded");

function VehicleListBackward(Player) { 
	local Editor = ClientEntity[Player.ID]
	Editor.VehicleSpawnerID--;
	if ( Editor.VehicleSpawnerID == -1) Editor.VehicleSpawnerID = VehicleSpawnerList.len() -1;
	
	local model = VehicleSpawnerList[Editor.VehicleSpawnerID];
	SpawnEntityType("Vehicle", model, Player );
}

print("Vehicle Button Backward function loaded");

function ManualVehicleInput(Player, Model) {
	print("ManualVehicleInput")
	local getCar = VehicleSpawnerList.find(Model.tointeger())
	local Editor = ClientEntity[Player.ID]
	if (getCar != null) {
		SpawnEntityType("Vehicle", VehicleSpawnerList[getCar], Player );
		Editor.VehicleSpawnerID = getCar;
	}
	else MessagePlayer("Invalid Vehicle ID", Player)
}

print("Vehicle Manual input function loaded");


function ManualPlayerInput(Player, Model) {
	//local getCar = PlayerSpawnerList.find(Model.tointeger())
	//local Editor = ClientEntity[Player.ID]
	//if (getCar != null) {
		SpawnEntityType("Player", Model, Player );
	//	Editor.PlayerSpawnerID = getCar;
	//}
	//else MessagePlayer("Invalid Player ID", Player)
}

function PlayerListForward(Player) { 
	if ( Player.Skin == 122) Player.Skin = 0;
	else Player.Skin += 1;
}

function PlayerListBackward(Player) { 
	if ( Player.Skin == 0) Player.Skin = 122;
	else Player.Skin -= 1;
}

// Part of GUI vehicle changer
function PickupListForward(Player) { 
	local Editor = ClientEntity[Player.ID];
	Editor.PickupSpawnerID++;
	if ( Editor.PickupSpawnerID == PickupSpawnerList.len()) Editor.PickupSpawnerID = 0;

	local model = PickupSpawnerList[Editor.PickupSpawnerID];
	SpawnEntityType("Pickup", model, Player );
}
function PickupListBackward(Player) { 
	local Editor = ClientEntity[Player.ID]
	Editor.PickupSpawnerID--;
	if ( Editor.PickupSpawnerID == -1) Editor.PickupSpawnerID = PickupSpawnerList.len() -1;
	
	local model = PickupSpawnerList[Editor.PickupSpawnerID];
	SpawnEntityType("Pickup", model, Player );
}
function ManualPickupInput(Player, Model) {
	local getPickup = PickupSpawnerList.find(Model.tointeger())
	local Editor = ClientEntity[Player.ID]
	if (getPickup != null) {
		SpawnEntityType("Pickup", PickupSpawnerList[getPickup], Player );
		Editor.PickupSpawnerID = getPickup;
	}
	else MessagePlayer("Invalid Pickup ID", Player)
}

//-------------------------------------

// Creates the entity
function SpawnEntityType(entity, model, Player ) {
	local Editor = ClientEntity[Player.ID];
	if (entity == "Vehicle" ) { 
      // One entity per slot right now
	  local tempVehicle = FindVehicle(Editor.Vehicle)
      if ( Editor.Vehicle != -1 ) {
		Player.RemoveFromVehicle();		
		tempVehicle.Remove();    
		
	  }

	  // Resume function
	  local vehicle = CreateVehicle( model.tointeger(), GetPlayer2DLookAtPos( Player, 10 ), -1, -1 );
		
		vehicle.Angle = 0
		Editor.CameraDegree = 0
      
		Editor.Vehicle = vehicle.ID;
		Editor.CurrentEntity = vehicle
		setMode( 1, Player )
		CameraPos( Player, Editor.CurrentEntity)
		Editor.EntityType = "Vehicle"
		//Player.Vehicle = vehicle
		Player.Frozen = false
	}
	
	if (entity == "Player" ) { 
		Editor.Player = Player.ID;
		Editor.CurrentEntity = FindPlayer(Player.ID)
		setMode( 1, Player )
		CameraPos( Player, Editor.CurrentEntity)
		Editor.EntityType = "Player";
		Player.Skin = model.tointeger();
		print(model)
	}
	
	if (entity == "Pickup" ) { 
		// One entity per slot right now
		if ( Editor.Pickup != -1 ) FindPickup(Editor.Pickup).Remove();
	  
		// Resume 
		local pickup = CreatePickup( model, GetPlayer2DLookAtPos( Player, 10 ) );
		
		Editor.Pickup = pickup.ID;
		Editor.CurrentEntity = pickup
		setMode( 1, Player )
		CameraPos( Player, Editor.CurrentEntity)
		Editor.EntityType = "Pickup"
	}
	
	if (entity == "Sphere" ) { 
		// One entity per slot right now
		if ( Editor.Sphere != -1 ) FindSphere(Editor.Sphere, Player).Remove();
	  
		// Resume 
		local sphere = CreateClientSphere( GetPlayer2DLookAtPos( Player, 10 ), 5.00, Colour( 0, 0, 255 ), Player );
      	Editor.CurrentEntity = sphere
		CameraPos( Player, Editor.CurrentEntity)
		Editor.Sphere = sphere.ID;
		Editor.EntityType = "Sphere"
	}
	MessagePlayer(entity + ": spawned in mission editor", Player);
	EditorStatus(Player, true)
}

print("Entity Creator function loaded");

function GetPlayer2DLookAtPos( Player, range ) {
	local angle = Player.Angle + 90; //To point North at 90 degrees (It is at 0 degree by default)
	
	if ( angle > 360 ) 
		angle -= 360;
		
	local slope = tan( angle * ( PI/180 ) );
	
	local x2 = null, y2 = null;
	
	if ( angle >= 135 && angle <= 225 )
		x2 = Player.Pos.x - range;
	else if ( angle > 225 && angle <= 315 )
		y2 = Player.Pos.y - range;
	else if ( angle > 315 || angle <= 45 )
		x2 = Player.Pos.x + range;
	else if ( angle >= 45 && angle < 135 )
		y2 = Player.Pos.y + range;
	
	if ( !y2 ) 
		y2 = ( ( x2 - Player.Pos.x ) * slope ) + Player.Pos.y;
	
	else if ( !x2 )
		x2 = (( y2 - Player.Pos.y )/slope) + Player.Pos.x;
		
	return Vector( x2, y2, Player.Pos.z);
}

//-------------------------------------

// Delete the entity if needed, Will need to add support for clearing on new slot calls
function RemoveEntity( entity, Player ) {
	if ( entity == "Vehicle") FindVehicle(ClientEntity[Player.ID].Vehicle).Remove();	
    else if ( entity == "Pickup") FindPickup(ClientEntity[Player.ID].Pickup).Remove();
    else if ( entity == "Sphere") FindSphere(ClientEntity[Player.ID].Sphere, Player).Remove();
	MessagePlayer(entity + ": removed in mission editor", Player);
}
print("Entity remover function loaded");

//-------------------------------------

// Player will be added later
function RotateEntityTo( entity, angle, Player ) {
	if ( entity == "Vehicle") {
		FindVehicle(ClientEntity[Player.ID].Vehicle).Angle += ClientEntity[Player.ID].EditorSensitivity;
		print(FindVehicle(ClientEntity[Player.ID].Vehicle).Angle)
		FindVehicle(ClientEntity[Player.ID].Vehicle).Angle = ClientEntity[Player.ID].CameraDegree;
		CameraPos( Player, FindVehicle(ClientEntity[Player.ID].Vehicle))
	}
	if ( entity == "Player") {
		FindPlayer(ClientEntity[Player.ID].Player).Angle += ClientEntity[Player.ID].EditorSensitivity;
		FindPlayer(ClientEntity[Player.ID].Player).Angle = ClientEntity[Player.ID].CameraDegree;
		CameraPos( Player, FindPlayer(ClientEntity[Player.ID].Player))
	}
}

print("Entity Rotater function loaded");

//-------------------------------------
function Get2DLookAtPos( pos, a, range )
{
	local angle = a + 90; //To point North at 90 degrees (It is at 0 degree by default)
	
	if ( angle > 360 ) 
		angle -= 360;
		
	local slope = tan( angle * ( PI/180 ) );
	
	local x2 = null, y2 = null;
	
	if ( angle >= 135 && angle <= 225 )
		x2 = pos.x - range;
	else if ( angle > 225 && angle <= 315 )
		y2 = pos.y - range;
	else if ( angle > 315 || angle <= 45 )
		x2 = pos.x + range;
	else if ( angle >= 45 && angle < 135 )
		y2 = pos.y + range;
	
	if ( !y2 ) 
		y2 = ( ( x2 - pos.x ) * slope ) + pos.y;
	
	else if ( !x2 )
		x2 = (( y2 - pos.y )/slope) + pos.x;
		
	
		return Vector( x2, y2, pos.z);
	
	
}

function round( val, idx ) {
    local f = pow( 10 , idx ) * 1.0;
    local newVal = val * f;
    newVal = floor(newVal + 0.5)
    newVal = ( newVal * 1.0 ) / f;
 
   return newVal;
}



print("Mission/Entity Editor Script [Controls.nut] Loaded");