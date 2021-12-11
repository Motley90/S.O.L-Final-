pPlayer	<- FindLocalPlayer();

function AddActor() {
	CallServerFunc( "Main/main.nut", "SWindow", "GameMode Maker", false, pPlayer );
	CallServerFunc( "Main/main.nut", "SWindow", "Main Player", true, pPlayer );
}
function Main_Player() {
	CallServerFunc( "Main/main.nut", "PlayerCreator", pPlayer );
	CallServerFunc( "Main/main.nut", "SWindow", "GameMode Maker", true, pPlayer );
	CallServerFunc( "Main/main.nut", "SWindow", "Main Player", false, pPlayer );
	CallServerFunc( "Main/main.nut", "EditorStatus", pPlayer, false );}
//-----------------------------------------------------------------------
function PlayerSpawner() {
	CallServerFunc( "Main/main.nut", "GetBoxMessage", "PlayerSpawner", "PlayerModel", pPlayer )	

}
function BoxInput(Model) { 
	CallServerFunc( "Main/main.nut", "ManualPlayerInput", pPlayer, Model );
}
//-----------------------------------------------------------------------
function PlayerModelListUP() {
	CallServerFunc( "Main/main.nut", "PlayerListForward", pPlayer );
}
function PlayerModelListDown() {
	CallServerFunc( "Main/main.nut", "PlayerListBackward", pPlayer );
}





