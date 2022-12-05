Class extends DataClass


exposed Function hasPrivilege($privilege : Text)->$result : Text
	$result:=Choose:C955(Session:C1714.hasPrivilege($privilege); "Yes"; "No")
	
	
exposed Function isGuest($privilege : Text)->$result : Boolean
	$result:=Session:C1714.isGuest()
	
exposed Function clearPrivileges()
	Session:C1714.clearPrivileges()
	