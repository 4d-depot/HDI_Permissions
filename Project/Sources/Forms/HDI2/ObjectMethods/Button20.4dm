

If (btnTrace)
	TRACE:C157
End if 

Case of 
	: (Form event code:C388=On Clicked:K2:4)
		
		loginAs("helen.cooper@4d.com"; "a")
		
		Form:C1466.privilege1:="patient"
		Form:C1466.privilege2:=""
		
		checkPrivileges
		
		
End case 