

If (btnTrace)
	TRACE:C157
End if 

Case of 
	: (Form event code:C388=On Clicked:K2:4)
		
		loginAs("albert.evans@4d.com"; "a")
		
		Form:C1466.privilege1:="createPatient"
		Form:C1466.privilege2:="intern"
		
		checkPrivileges
		
		
End case 