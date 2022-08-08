//%attributes = {}


var $record : cs:C1710.RecordsEntity
var $notDropped : cs:C1710.RecordsSelection

var $status : Object


$notDropped:=ds:C1482.Records.all().drop()
SET DATABASE PARAMETER:C642([Records:2]; Table sequence number:K37:31; 0)


$record:=ds:C1482.Records.new()
$record.creationDate:=Current date:C33()
$record.personalNotes:="The patient has recovered"
$record.report:="Nothing wrong"
$status:=$record.save()


$record:=ds:C1482.Records.new()
$record.creationDate:=Add to date:C393(Current date:C33(); 0; -1; 0)
$record.personalNotes:="The patient must be met again next week"
$record.report:="Flu treatment to take during three days"
$status:=$record.save()

$record:=ds:C1482.Records.new()
$record.creationDate:=Add to date:C393(Current date:C33(); 0; -3; 0)
$record.personalNotes:="Allergy investigation to do "
$record.report:="Allergy treatment to take during 7 days"
$status:=$record.save()

//Patients
$text:=Folder:C1567(fk resources folder:K87:11).file("Patients.json").getText("UTF-8")
$text:=Replace string:C233($text; "\r"; "")/* for windows */
$patientsData:=JSON Parse:C1218($text; Is collection:K8:32)

$patients:=ds:C1482.Patients.fromCollection($patientsData)
