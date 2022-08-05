//%attributes = {}


#DECLARE()->$result : Object

ARRAY TEXT:C222($headerNames; 0)
ARRAY TEXT:C222($headerValues; 0)

If (Storage:C1525.cookieInfo.value#"")
	ARRAY TEXT:C222($headerNames; 1)
	$headerNames{1}:="Cookie"
	
	ARRAY TEXT:C222($headerValues; 1)
	$headerValues{1}:=Storage:C1525.cookieInfo.value
End if 

$result:=New object:C1471()
OB SET ARRAY:C1227($result; "names"; $headerNames)
OB SET ARRAY:C1227($result; "values"; $headerValues)


