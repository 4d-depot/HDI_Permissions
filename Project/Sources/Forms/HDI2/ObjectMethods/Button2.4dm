

If (btnTrace)
	TRACE:C157
End if 

Case of 
	: (Form event code:C388=On Clicked:K2:4)
		
		loginAs("ann.brown@4d.com"; "a")
		
		//Form.info:=Form.ds.loginAs("ann.brown@4d.com"; "a")
		
End case 