

If (btnTrace)
	TRACE:C157
End if 

Case of 
	: (Form event code:C388=On Clicked:K2:4)
		authenticate("doctor@4d.com"; "a")
		checkPrivileges
End case 