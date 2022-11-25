Case of 
		
	: (Form event code:C388=On Load:K2:1)
		
		btnTrace:=False:C215
		
		InitInfo
		
		//$connect:=New object("hostname"; "127.0.0.1:8044")
		//Form.ds:=Open datastore($connect; "remoteDS")
		
		
		READ WRITE:C146(*)
		
		manageTexts
		
		
	: (Form event code:C388=On Page Change:K2:54)
		
		addData
		
		//Form.date:=Date("2022-08-07T00:00:00")
		Form:C1466.date:=!2022-08-07!
		Form:C1466.record:=New object:C1471("creationDate"; Current date:C33(); "report"; "Report"; "personalNotes"; "This is HDI confidential")
		Form:C1466.records:=ds:C1482.Records.all().orderBy("creationDate")
		
		Form:C1466.patients:=ds:C1482.Patients.all()
		Form:C1466.patient:=New object:C1471("firstname"; "aaa"; "lastname"; "bbb")
		
		Form:C1466.info:=Null:C1517
		
		If (FORM Get current page:C276=3)
			Form:C1466.roles:=_Directions[1]
		End if 
		
		If (FORM Get current page:C276=4)
			Form:C1466.roles:=_Directions[8]
		End if 
		
		If (FORM Get current page:C276=5)
			Form:C1466.roles:=_Directions[11]
		End if 
		
		manageTexts
		
End case 

