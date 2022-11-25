

If (btnTrace)
	TRACE:C157
End if 

Case of 
	: (Form event code:C388=On Clicked:K2:4)
		
		$body:=New collection:C1472(Form:C1466.patient)
		$response:=RESTRequest("Patients?$method=update"; HTTP POST method:K71:2; $body)
		
		Form:C1466.info:=$response
		
		Form:C1466.patients:=ds:C1482.Patients.all().orderBy("ID asc")
		
End case 