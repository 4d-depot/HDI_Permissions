
var $response : Object

If (btnTrace)
	TRACE:C157
End if 

Case of 
	: (Form event code:C388=On Clicked:K2:4)
		$response:=RESTRequest("Records"; HTTP GET method:K71:1)
		Form:C1466.info:=$response
End case 