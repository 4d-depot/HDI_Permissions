//%attributes = {}


$privileges:=New collection:C1472("createPatient"; "readRecords"; "administrate"; "medicalAction")


For each ($p; $privileges)
	Form:C1466[$p]:=hasPrivilege($p)
End for each 

Form:C1466.guest:=Choose:C955(isGuest; "Yes"; "No")
