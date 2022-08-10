Class extends DataStoreImplementation


exposed Function loginAs($privilege : Text)->$result : Text
	
	$result:="Your are loggued as Guest"
	
	Session:C1714.clearPrivileges()
	Session:C1714.setPrivileges($privilege)
	
	If (Session:C1714.hasPrivilege($privilege))
		$result:="Your are loggued as "+$privilege
	End if 
	
	