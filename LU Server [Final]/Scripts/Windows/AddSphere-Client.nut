/*
	In the editor try writing a key pair method for spheres
	We get this ID on entry if Gamemode is active in the generated script. It's auto linked in onPlayerEnteredSphere
	Add calling the new slot which should equal to deleting it from this event.
	
	in the editor when confirm if clicked write the sphere to the slot and create the new slot that automatically has code to delete that sphere
	If the player adds another sphere it will appear as a race as this is a constant loop at this point.
	
	Notify in the editor before creating a sphere the player should add a camera or message beforehand

	Lets try logging data that was added. Like GetInCar, EnterSphere etc
	
	So this way we might be able to add a check function that gets all the paired data. Basically dumping func names in a array as we create it
	for the new slot to automatically check for
*/
pPlayer	<- FindLocalPlayer();


// Generates the Sphere position
function Add_Sphere() {
	// Get the position in the editor and write it to file "CallServerFunc"
	CallServerFunc( "Main/main.nut", "SphereCreator", pPlayer );

	CallServerFunc( "Main/main.nut", "SWindow", "Add Sphere", false, pPlayer );
		CallServerFunc( "Main/main.nut", "EditorStatus", pPlayer, false );
	CallServerFunc( "Main/main.nut", "SWindow", "GameMode Maker", true, pPlayer );
}

function AddSphere() {
	//CallServerFunc( "Main/main.nut", "GetSpherePos", pPlayer );
	CallServerFunc( "Main/main.nut", "SpawnEntityType", "Sphere", null, pPlayer );

	CallServerFunc( "Main/main.nut", "SWindow", "Add Sphere", true, pPlayer );
	CallServerFunc( "Main/main.nut", "SWindow", "GameMode Maker", false, pPlayer );
}




