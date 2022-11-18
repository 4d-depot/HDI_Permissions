

If (btnTrace)
	TRACE:C157
End if 

Case of 
	: (Form event code:C388=On Clicked:K2:4)
		
		//Form.info:=Form.ds.loginAs("The Admin")
		
		
		Form:C1466.info:=Form:C1466.ds.loginAs("ann.brown@4d.com"; "a")
		
End case 