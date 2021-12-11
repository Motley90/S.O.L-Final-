
pPlayer	<- FindLocalPlayer();


// Generates the camera position
function CameraProgram() {
	CallServerFunc( "Main/main.nut", "SWindow", "Add Camera", true, pPlayer );
	CallServerFunc( "Main/main.nut", "SWindow", "GameMode Maker", false, pPlayer );
}

function AddCamera() {
	CallServerFunc( "Main/main.nut", "GetCameraPos", pPlayer );
	CallServerFunc( "Main/main.nut", "EditorStatus", pPlayer, false );
	CallServerFunc( "Main/main.nut", "SWindow", "Add Camera", false, pPlayer );
	CallServerFunc( "Main/main.nut", "SWindow", "GameMode Maker", true, pPlayer );
}