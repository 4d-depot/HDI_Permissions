//%attributes = {}

C_LONGINT:C283($i; $n)


var _Descriptions : Collection
var _Directions : Collection


_Descriptions:=New collection:C1472()
_Directions:=New collection:C1472()


If (Is Windows:C1573)
	// $n:=Size of array(_Descriptions)
	//For ($i; 1; $n)
	For each ($text; _Descriptions_0)
		ST SET ATTRIBUTES:C1093($text; ST Start text:K78:15; ST End text:K78:16; Attribute text size:K65:6; 14)
		_Descriptions.push($text)
	End for each 
	
	//$n:=Size of array(_Directions)
	//For ($i; 1; $n)
	For each ($text; _Directions_0)
		ST SET ATTRIBUTES:C1093($text; ST Start text:K78:15; ST End text:K78:16; Attribute text size:K65:6; 12; Attribute italic style:K65:2; 1)
		_Directions.push($text)
	End for each 
	
	//$n:=Size of array(_TabLineHTML)
	//For ($i; 1; $n)
	//ST SET ATTRIBUTES(_TabLineHTML{$i}; ST Start text; ST End text; Attribute text size; 13)
	//End for 
End if 


If (Is macOS:C1572)
	//$n:=Size of array(_Descriptions)
	//For ($i; 1; $n)
	For each ($text; _Descriptions_0)
		ST SET ATTRIBUTES:C1093($text; ST Start text:K78:15; ST End text:K78:16; Attribute text size:K65:6; 16)
		_Descriptions.push($text)
	End for each 
	
	//$n:=Size of array(_Directions)
	For each ($text; _Directions_0)
		//For ($i; 1; $n)
		ST SET ATTRIBUTES:C1093($text; ST Start text:K78:15; ST End text:K78:16; Attribute text size:K65:6; 14; Attribute italic style:K65:2; 1)
		_Directions.push($text)
	End for each 
	
	//$n:=Size of array(_TabLineHTML)
	//For ($i; 1; $n)
	//ST SET ATTRIBUTES(_TabLineHTML{$i}; ST Start text; ST End text; Attribute text size; 15)
	//End for 
End if 