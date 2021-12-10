
/*Add these two Windows 
 ______________
|              |    * Contains *   
|   New Task   |    * Finishing the current slot
|              |    * List as label: "Add what happens after this function ends"
|              |    * List as label: "Once a function is complete the next slot is called"
|______________|    * List as label: "Getting in car, Camera/Message is over. Whatever desired"

 ______________
|              |    * Contains *   
|    Finish    |    * Automatically creates a slot saying "Mission Passed"
|    Mission   |    * List as label: "If you are done making this script click Finish"
|              |    * Writes all of the data to script format
|______________|    * Script is over; exit player from editor


    In editor windows like vehicle maker sure we pass all the values for the script wrapper to fill and store in a file buffer
    In this buffer if you were to read it, it would look like a script. We will write it later on "Finish Mission" GUI
------------------------------------------------------------------------------------------------------------

CMissionScriptBuffer

* Contains fancy functions * 

* If vehicle was selected automatically writes a GetInCar Function ["Requires being in it's own slot awaiting the new slot call {enter vehicle}"]
* Small Message can be added at any time, but only once per slot until I bind multipals
* Actor has to call many slots but can accept: 
Setting Player Pos, Setiing Player Anngle, Setting a message, Camera is automatically forced for use. Thats it for right now
* GetInCar(iD), This needs a event trigger on player enter vehicle. 
* Add a clean way to bump the player slot plus calling the new slot in the generated script "review 2017 source"

-------------------------------------------------------------------------------------------------------------------------------------

************** You are now at a test faze of generating scripts and testing them right after. "It's probably going to take a lot of adjustments"