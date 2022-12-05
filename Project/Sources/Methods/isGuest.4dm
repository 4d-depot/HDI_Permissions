//%attributes = {}


#DECLARE()->$result : Boolean

ARRAY TEXT:C222($headerNames; 0)
ARRAY TEXT:C222($headerValues; 0)

var $HTTPStatus : Integer
var $url : Text
var $response : Object
var $headers : Object
var $body : Collection

$headers:=buildHeaders()
OB GET ARRAY:C1229($headers; "names"; $headerNames)
OB GET ARRAY:C1229($headers; "values"; $headerValues)

$url:="127.0.0.1:8044/rest/Utilities/isGuest"
$HTTPStatus:=HTTP Request:C1158(HTTP POST method:K71:2; $url; New collection:C1472(); $response; $headerNames; $headerValues; *)

$headers:=New object:C1471()
OB SET ARRAY:C1227($headers; "names"; $headerNames)
OB SET ARRAY:C1227($headers; "values"; $headerValues)

storeCookie($headers)

$result:=$response.result



