//%attributes = {}

#DECLARE($headers : Object)->$result : Object

ARRAY TEXT:C222($headerNames; 0)
ARRAY TEXT:C222($headerValues; 0)
//C_OBJECT($0; $result)


OB GET ARRAY:C1229($headers; "names"; $headerNames)
OB GET ARRAY:C1229($headers; "values"; $headerValues)

$indexCookie:=Find in array:C230($headerValues; "4DSID@")
$cookie:=$headerValues{$indexCookie}
$start:=Position:C15("4DSID"; $cookie)
$end:=Position:C15(";"; $cookie)

$cookie:=Substring:C12($cookie; $start; $end-$start)

Use (Storage:C1525.cookieInfo)
	Storage:C1525.cookieInfo.value:=$cookie
End use 