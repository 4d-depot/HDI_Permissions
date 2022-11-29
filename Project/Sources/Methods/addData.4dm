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
$record.report:="Flu treatment (three days)"
$status:=$record.save()

$record:=ds:C1482.Records.new()
$record.creationDate:=Add to date:C393(Current date:C33(); 0; -2; 0)
$record.personalNotes:="Allergy investigation to do "
$record.report:="Allergy treatment (seven days)"
$status:=$record.save()

$record:=ds:C1482.Records.new()
$record.creationDate:=Add to date:C393(Current date:C33(); 0; -3; 0)
$record.personalNotes:="The patient must be met again next month"
$record.report:="Treatment for cold(10 days)"
$status:=$record.save()

$record:=ds:C1482.Records.new()
$record.creationDate:=Add to date:C393(Current date:C33(); 0; -4; 0)
$record.personalNotes:="The patient must be met again in two days"
$record.report:="Go on with the flu treatment (10 days)"
$status:=$record.save()

//Patients
$text:=Folder:C1567(fk resources folder:K87:11).file("Patients.json").getText("UTF-8")
$text:=Replace string:C233($text; "\r"; "")/* for windows */
$patientsData:=JSON Parse:C1218($text; Is collection:K8:32)

$patients:=ds:C1482.Patients.fromCollection($patientsData)

$notDropped:=ds:C1482.Users.all().drop()

$user:=ds:C1482.Users.new()
$user.identifier:="ann.brown@4d.com"
$user.password:=Generate password hash:C1533("a")
$user.role:="The Admin"
$status:=$user.save()

$user:=ds:C1482.Users.new()
$user.identifier:="mary.smith@4d.com"
$user.password:=Generate password hash:C1533("a")
$user.role:="The Doctor"
$status:=$user.save()

$user:=ds:C1482.Users.new()
$user.identifier:="john.anderson@4d.com"
$user.password:=Generate password hash:C1533("a")
$user.role:="The Intern"
$status:=$user.save()

$user:=ds:C1482.Users.new()
$user.identifier:="helen.cooper@4d.com"
$user.password:=Generate password hash:C1533("a")
$user.role:="The Patient"
$status:=$user.save()

$user:=ds:C1482.Users.new()
$user.identifier:="albert.evans@4d.com"
$user.password:=Generate password hash:C1533("a")
$user.role:="The Secretary"
$status:=$user.save()