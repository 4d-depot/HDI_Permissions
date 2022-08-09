//%attributes = {}


SET DATABASE PARAMETER:C642([Records:2]; Table sequence number:K37:31; 0)


$text:=Folder:C1567(fk resources folder:K87:11).file("Records.json").getText("UTF-8")
$text:=Replace string:C233($text; "\r"; "")/* for windows */

$recordsData:=JSON Parse:C1218($text; Is collection:K8:32)

$notDropped:=ds:C1482.Records.all().drop()
$records:=ds:C1482.Records.fromCollection($recordsData)
