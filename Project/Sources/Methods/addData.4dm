//%attributes = {}


var $records : cs:C1710.RecordsSelection
var $patients : cs:C1710.PatientsSelection
var $user : cs:C1710.UsersEntity

var $notDropped : 4D:C1709.EntitySelection

var $recordsData; $patientsData : Collection

var $status : Object

var $text : Text

//Records
$notDropped:=ds:C1482.Records.all().drop()
SET DATABASE PARAMETER:C642([Records:2]; Table sequence number:K37:31; 0)

$text:=Folder:C1567(fk resources folder:K87:11).file("Records.json").getText("UTF-8")
$text:=Replace string:C233($text; "\r"; "")/* for windows */
$recordsData:=JSON Parse:C1218($text; Is collection:K8:32)

$records:=ds:C1482.Records.fromCollection($recordsData)


//Patients
$notDropped:=ds:C1482.Patients.all().drop()
SET DATABASE PARAMETER:C642([Patients:4]; Table sequence number:K37:31; 0)


$text:=Folder:C1567(fk resources folder:K87:11).file("Patients.json").getText("UTF-8")
$text:=Replace string:C233($text; "\r"; "")/* for windows */
$patientsData:=JSON Parse:C1218($text; Is collection:K8:32)

$patients:=ds:C1482.Patients.fromCollection($patientsData)

//Users
$notDropped:=ds:C1482.Users.all().drop()

$user:=ds:C1482.Users.new()
$user.identifier:="admin@4d.com"
$user.password:=Generate password hash:C1533("a")
$user.role:="The Admin"
$status:=$user.save()

$user:=ds:C1482.Users.new()
$user.identifier:="doctor@4d.com"
$user.password:=Generate password hash:C1533("a")
$user.role:="The Doctor"
$status:=$user.save()

$user:=ds:C1482.Users.new()
$user.identifier:="intern@4d.com"
$user.password:=Generate password hash:C1533("a")
$user.role:="The Intern"
$status:=$user.save()

$user:=ds:C1482.Users.new()
$user.identifier:="patient@4d.com"
$user.password:=Generate password hash:C1533("a")
$user.role:="The Patient"
$status:=$user.save()

$user:=ds:C1482.Users.new()
$user.identifier:="secretary@4d.com"
$user.password:=Generate password hash:C1533("a")
$user.role:="The Secretary"
$status:=$user.save()