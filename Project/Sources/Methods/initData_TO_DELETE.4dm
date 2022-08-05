//%attributes = {"invisible":true}

$file:=File:C1566("/RESOURCES/Members.json")
$text:=Document to text:C1236($file.platformPath)
$persons:=JSON Parse:C1218($text)

SET DATABASE PARAMETER:C642([Persons:2]; Table sequence number:K37:31; 0)
$notDropped:=ds:C1482.Persons.all().drop()

$newPersons:=ds:C1482.Persons.fromCollection($persons)

$id:=1
For each ($person; ds:C1482.Persons.all())
	$person.personalID:=$id
	$id:=$id+1
	$status:=$person.save()
End for each 


SET DATABASE PARAMETER:C642([Addresses:3]; Table sequence number:K37:31; 0)
$notDropped:=ds:C1482.Addresses.all().drop()

$file:=File:C1566("/RESOURCES/Addresses.json")
$text:=Document to text:C1236($file.platformPath)
$addresses:=JSON Parse:C1218($text)

$newAddresses:=ds:C1482.Addresses.fromCollection($addresses)