

If (btnTrace)
	TRACE:C157
End if 

Case of 
	: (Form event code:C388=On Clicked:K2:4)
		
		
		$body:=New collection:C1472(String:C10(Current date:C33()))
		$response:=RESTRequest("Records/deleteFrom"; HTTP POST method:K71:2; $body)
		
		Form:C1466.info:=$response.result
		
End case 