pPlayer	<- FindLocalPlayer();

function VehicleWindow() {
	CallServerFunc( "Main/main.nut", "SWindow", "GameMode Maker", false, pPlayer );
	CallServerFunc( "Main/main.nut", "SWindow", "Main Vehicle", true, pPlayer );
}
function Main_Vehicle() {
	CallServerFunc( "Main/main.nut", "VehicleCreator", pPlayer );

	CallServerFunc( "Main/main.nut", "SWindow", "GameMode Maker", true, pPlayer );
		CallServerFunc( "Main/main.nut", "EditorStatus", pPlayer, false );
	CallServerFunc( "Main/main.nut", "SWindow", "Main Vehicle", false, pPlayer );
}
//-----------------------------------------------------------------------
function VehicleSpawner() {
	CallServerFunc( "Main/main.nut", "GetBoxMessage", "VehicleSpawner", "VehicleModel", pPlayer )	

}
function BoxInput(Model) { 
	CallServerFunc( "Main/main.nut", "ManualVehicleInput", pPlayer, Model );
}
//-----------------------------------------------------------------------
function VehicleModelListUP() {
	CallServerFunc( "Main/main.nut", "VehicleListForward", pPlayer );
}
function VehicleModelListDown() {
	CallServerFunc( "Main/main.nut", "VehicleListBackward", pPlayer );
}