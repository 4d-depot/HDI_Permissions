
var $picture : Picture

var $folder : 4D:C1709.Folder
var $path : Text

Case of 
		
	: (Form event code:C388=On Load:K2:1)
		
		btnTrace:=False:C215
		
		initInfo
		
		$folder:=Folder:C1567("/RESOURCES/Images")
		$path:=$folder.platformPath+"DataModel.png"
		READ PICTURE FILE:C678($path; $picture)
		Form:C1466.dataModel:=$picture
		
		READ WRITE:C146(*)
		
		manageTexts
		
		
	: (Form event code:C388=On Page Change:K2:54)
		
		addData
		
		clearPrivileges
		
		Form:C1466.date:=Add to date:C393(Current date:C33(); 0; -2; 0)
		Form:C1466.record:=New object:C1471("creationDate"; Current date:C33(); "report"; "New report created"; "personalNotes"; "These are personal notes")
		Form:C1466.records:=ds:C1482.Records.all().orderBy("creationDate")
		
		Form:C1466.patientInfo:=New object:C1471("firstname"; "Mary"; "lastname"; "Smith")
		Form:C1466.patients:=ds:C1482.Patients.all()
		
		Form:C1466.users:=ds:C1482.Users.all()
		
		Form:C1466.info:=Null:C1517
		
		checkPrivileges
		
		manageTexts
		
End case 

