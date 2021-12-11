pPlayer	<- FindLocalPlayer();


function AddMessage() {
	CallServerFunc( "Main/main.nut", "GetBoxMessage", "AddMessage", "AddMessage", pPlayer )
	
}
function MessageProgram() { 
	CallServerFunc( "Main/main.nut", "SWindow", "Add Text", true, pPlayer );
	CallServerFunc( "Main/main.nut", "SWindow", "GameMode Maker", false, pPlayer );
}
function BoxInput(Input) { 
	CallServerFunc( "Main/main.nut", "AddMessageForPlayer", pPlayer, Input );
		CallServerFunc( "Main/main.nut", "EditorStatus", pPlayer, false );
	CallServerFunc( "Main/main.nut", "SWindow", "Add Text", false, pPlayer );
	CallServerFunc( "Main/main.nut", "SWindow", "GameMode Maker", true, pPlayer );
	SmallMessage(Input, 1000, 2)
}