

If (btnTrace)
	TRACE:C157
End if 

Case of 
	: (Form event code:C388=On Clicked:K2:4)
		
		createEntitySelections
		
		Form:C1466.metrics:=ds:C1482.getMetrics()
		
End case 