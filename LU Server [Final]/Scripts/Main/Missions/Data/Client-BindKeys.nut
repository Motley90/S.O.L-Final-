pPlayer	<- FindLocalPlayer();
function onScriptLoad() {
	BindKey( 'W', BINDTYPE_DOWN, "PressedForward" );
	BindKey( 'A', BINDTYPE_DOWN, "PressedLeft" );
	BindKey( 'S', BINDTYPE_DOWN, "PressedBackward" );
	BindKey( 'D', BINDTYPE_DOWN, "PressedRight" );
	BindKey( '1', BINDTYPE_DOWN, "CameraMode" );
	BindKey( '2', BINDTYPE_DOWN, "MoveUpDown" );
	BindKey( '3', BINDTYPE_DOWN, "MoveLeftRight" );
	BindKey( '4', BINDTYPE_DOWN, "RotateLeft" );
	BindKey( '5', BINDTYPE_DOWN, "RotateRight" );
}

function RotateLeft(){
	CallServerFunc( "Main/main.nut", "setMode", 2, pPlayer)
}
function RotateRight(){
	CallServerFunc( "Main/main.nut", "setMode", 3, pPlayer)
}
function MoveLeftRight(){
	CallServerFunc( "Main/main.nut", "setMode", 0, pPlayer)
}
function MoveUpDown() {
	CallServerFunc( "Main/main.nut", "setMode", 1, pPlayer)
}
function CameraMode() { 
	CallServerFunc( "Main/main.nut", "setMode", 4, pPlayer)
}
function PressedForward() {
	CallServerFunc( "Main/main.nut", "MoveForward", pPlayer)
}
function PressedBackward() {
	CallServerFunc( "Main/main.nut", "MoveBackward", pPlayer)
}
function PressedLeft() {
	CallServerFunc( "Main/main.nut", "MoveLeft", pPlayer)
}
function PressedRight() {
	CallServerFunc( "Main/main.nut", "MoveRight", pPlayer)
}