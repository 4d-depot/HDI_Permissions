//%attributes = {}


#DECLARE($identifier : Text; $password : Text)

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

$url:="127.0.0.1:8044/rest/$catalog/authenticate"
$body:=New collection:C1472($identifier; $password)
$HTTPStatus:=HTTP Request:C1158(HTTP POST method:K71:2; $url; $body; $response; $headerNames; $headerValues; *)

$headers:=New object:C1471()
OB SET ARRAY:C1227($headers; "names"; $headerNames)
OB SET ARRAY:C1227($headers; "values"; $headerValues)

storeCookie($headers)

Form:C1466.info:=$response.result



