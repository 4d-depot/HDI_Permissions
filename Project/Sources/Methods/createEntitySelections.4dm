//%attributes = {"invisible":true}



$persons:=ds:C1482.Persons.query("personalID >=40")
$addresses:=ds:C1482.Addresses.query("city = :1"; "f@")

Use (Storage:C1525.selections)
	Storage:C1525.selections.push($persons)
	Storage:C1525.selections.push($addresses)
End use 


