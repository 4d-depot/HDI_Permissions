//%attributes = {"invisible":true}
var Infos : Collection
var objTabs : Object

var _Descriptions_0 : Collection
var _Directions_0 : Collection

Infos:=ds:C1482.INFO.query("PageNumber < 10").orderBy("PageNumber").toCollection()
_Descriptions_0:=Infos.extract("Description")



objTabs:=New object:C1471("values"; Infos.extract("TabTitle"); "index"; 0)

_Directions_0:=ds:C1482.INFO.query("PageNumber >= 10").orderBy("PageNumber").Description


