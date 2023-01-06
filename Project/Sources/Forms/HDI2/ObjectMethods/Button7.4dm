
var $response : Object
var $body : Collection

If (btnTrace)
	TRACE:C157
End if 

Case of 
	: (Form event code:C388=On Clicked:K2:4)
		$body:=New collection:C1472(String:C10(Form:C1466.date))
		$response:=RESTRequest("Records/deleteOldRecords"; HTTP POST method:K71:2; $body)
		Form:C1466.info:=$response
		Form:C1466.records:=ds:C1482.Records.all().orderBy("creationDate")
End case 