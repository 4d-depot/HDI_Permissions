//%attributes = {}


$coll:=ds:C1482.Records.all().toCollection()

$text:=JSON Stringify:C1217($coll)

TEXT TO DOCUMENT:C1237("records"; $text)