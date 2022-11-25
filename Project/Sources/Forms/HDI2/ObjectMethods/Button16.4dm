

If (btnTrace)
	TRACE:C157
End if 

Case of 
	: (Form event code:C388=On Clicked:K2:4)
		
		//$body:=New collection(Form.record)
		
		///rest/Patients(Form.selectedPatient.getKey())/?$method=delete
		
		$response:=RESTRequest("Patients(Form.selectedPatient.getKey())/?$method=delete"; HTTP POST method:K71:2)
		
		Form:C1466.info:=$response
		
		Form:C1466.patients:=ds:C1482.Patients.all().orderBy("ID asc")
		
End case 