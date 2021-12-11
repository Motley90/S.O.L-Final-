pPlayer	<- FindLocalPlayer();
ActiveWindows <- [""]

function onScriptLoad() {
	print("--------------------------------");
	print("Demo: Main Client Gui Loading...");
	PlayerResolution();
	ShowMouseCursor( true )
}

function HandleWindows(Add, Close, Window) {
	if ( Add == "Enable" ) {
		ActiveWindows.push(Window)
		ShowWindow(Window, true); 
		return true;
	}

	if (Close != "" ) {
			ShowWindow(Window, false);
			local iD = ActiveWindows.find(Window);
			ActiveWindows.remove(iD)
			return true;
	} 
	else {	
		if (Window == "All") {
			foreach(windows in ActiveWindows) {
				if (windows) ShowWindow(windows, false);
			}
			ActiveWindows.clear()	
		}
		return true;		
	}		
}

local 
WindowScreen = {}, 
WindowButton = {}, 
WindowLabel = {},
WindowBox = {},
WindowCheckBox = {};
function PlayerResolution() {
	CallServerFunc( "Main/main.nut", "ScreenSettings", ScreenWidth, ScreenHeight, pPlayer )
	CallServerFunc( "Main/main.nut", "Main", pPlayer )
}
function AddWindow(PosX, PosY, SizeX, SizeY, TitleText, CanMove, R, G, B, Showing, AlphaChannel) {
	WindowScreen.rawset(TitleText, GUIWindow( VectorScreen(PosX, PosY), ScreenSize(SizeX, SizeY), TitleText ));
	local MyWindow = WindowScreen.rawget(TitleText);
	MyWindow.Colour = Colour(R, G, B);
	MyWindow.Alpha = AlphaChannel
	MyWindow.Visible = Showing
	AddGUILayer(MyWindow);
}
function ShowWindow(Window, Bool) {    
	WindowScreen.rawget(Window).Visible = Bool;
}
function AddLabel(Label, LabelText, Window, PosX, PosY, SizeX, SizeY, R, G, B) { 
	WindowLabel.rawset(Label, GUILabel( VectorScreen(PosX, PosY), ScreenSize((ScreenWidth / ScreenHeight), (ScreenWidth / ScreenHeight)), LabelText))
	local MyWindow = WindowScreen.rawget(Window)
	WindowLabel.rawget(Label).TextColour = Colour(R, G, B);
	//WindowLabel.rawget(Label).FontSize =  sqrt((ScreenWidth / ScreenHeight) / (ScreenWidth, ScreenHeight));
	MyWindow.AddChild(WindowLabel.rawget(Label))	 
}
function AddBox(Box, Window, PosX, PosY, SizeX, SizeY) { 
	WindowBox.rawset(Box, GUIEditbox( VectorScreen(PosX, PosY), ScreenSize(SizeX, SizeY)))
	local MyWindow = WindowScreen.rawget(Window)
	WindowBox.rawget(Box).Active = true
	MyWindow.AddChild(WindowBox.rawget(Box))	 
}
function AddCheckBox(Box, Window, PosX, PosY, SizeX, SizeY) { 
	WindowCheckBox.rawset(Box, GUICheckbox( VectorScreen(PosX, PosY), ScreenSize(SizeX, SizeY)))
	local MyWindow = WindowScreen.rawget(Window)
	MyWindow.AddChild(WindowCheckBox.rawget(Box))	 
}
function GetCheckBox(Box) { 
	local Status = WindowCheckBox.rawget(Box).Checked
	return Status;	 
}
function ResetCheckBox(Box) { 
	WindowCheckBox.rawget(Box).Checked = false;
}
function GetBoxText(Box) {
	local input = WindowBox.rawget(Box).Text;
	return input;
}
function ChangeLabel(Label, LabelText, R, G, B) { 
	WindowLabel.rawget(Label).TextColour = Colour(R, G, B);
	WindowLabel.rawget(Label).Text = LabelText;	 
}
function AddButton(ButtonFunction, ButtonText, Window, PosX, PosY, SizeX, SizeY) { 
	WindowButton.rawset(ButtonFunction, GUIButton( VectorScreen(PosX, PosY), ScreenSize(SizeX, SizeY), ButtonText))
	local MyWindow = WindowScreen.rawget(Window)
	MyWindow.AddChild(WindowButton.rawget(ButtonFunction))
}
function SendBoxInput(myFunc, Box) { 
	local input = GetBoxText(Box);
	CallServerFunc( "Main/main.nut", "SendBoxText", myFunc, input, pPlayer )
}
// Static functions
//------------------------------------------------------------------------------------

function onClientClickButton( button ) {
	foreach(ButtonFunc, Button in WindowButton) {
		if (button.ID == Button.ID ) {
			CallServerFunc( "Main/main.nut", "LaunchWindow", ButtonFunc, pPlayer )
			print(ButtonFunc)
		}
	}	
}

/*function onClientMouseMove  ( x,  y ) {
	local posw = WorldPosToScreen ( pPlayer.Pos )
	print(posw.x +" "+ posw.y)
	SetMouseCursorPos(VectorScreen(posw.x, posw.y))
}*/


function AddActor() {
	ChangeLabel("Test4", "Not added yet...",255, 0, 0)
	NewTimer("Start4", 1000, 1)
	function Start4() {
	ChangeLabel("Test4", "Add Actor", 255, 255, 255 )
	}
}

