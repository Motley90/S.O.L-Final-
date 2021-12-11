pPlayer	<- FindLocalPlayer();

function PickupWindow() {
	CallServerFunc( "Main/main.nut", "SWindow", "GameMode Maker", false, pPlayer );
	CallServerFunc( "Main/main.nut", "SWindow", "Main Pickup", true, pPlayer );
}
function Main_Pickup() {
	CallServerFunc( "Main/main.nut", "PickupCreator", pPlayer );

	CallServerFunc( "Main/main.nut", "SWindow", "GameMode Maker", true, pPlayer );
		CallServerFunc( "Main/main.nut", "EditorStatus", pPlayer, false );
	CallServerFunc( "Main/main.nut", "SWindow", "Main Pickup", false, pPlayer );
}
//-----------------------------------------------------------------------
function PickupSpawner() {
	CallServerFunc( "Main/main.nut", "GetBoxMessage", "PickupSpawner", "PickupModel", pPlayer )	

}
function BoxInput(Model) { 
	CallServerFunc( "Main/main.nut", "ManualPickupInput", pPlayer, Model );
}
//-----------------------------------------------------------------------
function ModelListUP() {
	CallServerFunc( "Main/main.nut", "PickupListForward", pPlayer );
}
function ModelListDown() {
	CallServerFunc( "Main/main.nut", "PickupListBackward", pPlayer );
}





