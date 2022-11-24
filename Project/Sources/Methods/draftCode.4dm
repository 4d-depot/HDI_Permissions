//%attributes = {}

$connect:=New object:C1471("hostname"; "127.0.0.1:8044")
$ds:=Open datastore:C1452($connect; "remoteDS")



$info:=$ds.loginAs("ann.brown@4d.com"; "a")

$result:=$ds.Records.deleteFrom("24/09/2022")