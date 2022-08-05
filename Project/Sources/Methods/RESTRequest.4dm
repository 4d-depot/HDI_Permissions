//%attributes = {}
#DECLARE($url : Text; $verb : Text; $body : Collection)->$result : Object

var $responseObj : Object
var $headers : Object
var $body : Collection

ARRAY TEXT:C222($headerNames; 0)
ARRAY TEXT:C222($headerValues; 0)

$headers:=buildHeaders()
OB GET ARRAY:C1229($headers; "names"; $headerNames)
OB GET ARRAY:C1229($headers; "values"; $headerValues)

$url:="127.0.0.1:8044/rest/"+$url
$httpStatusCode:=HTTP Request:C1158($verb; $url; $body; $responseObj; $headerNames; $headerValues; *)

$result:=$responseObj