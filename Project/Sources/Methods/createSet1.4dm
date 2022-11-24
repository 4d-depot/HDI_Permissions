//%attributes = {"invisible":true}


If (Count parameters:C259=0)
	$ps:=New process:C317(Current method name:C684; 0; "PROCESS FOR CREATING SETS"; "fake"; *)
Else 
	QUERY:C277([Persons:2]; [Persons:2]personalID:6>=50)
	CREATE SET:C116([Persons:2]; "personsSet")
	
	QUERY:C277([Addresses:3]; [Addresses:3]city:2="C@")
	CREATE SET:C116([Addresses:3]; "addressesSet")
	
	$win:=Open form window:C675("runningProcessForm"; Plain form window:K39:10; Horizontally centered:K39:1; Vertically centered:K39:4)
	SET WINDOW TITLE:C213("A new process is running"; $win)
	$data:=New object:C1471()
	$data.processName:=Current process name:C1392
	DIALOG:C40("runningProcessForm"; $data)
	
	
End if 

