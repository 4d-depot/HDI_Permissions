Class extends DataStoreImplementation


exposed Function loginAs($identifier : Text; $password : Text)->$result : Text
	
	Session:C1714.clearPrivileges()
	
	$result:="Your are loggued as Guest"
	
	$user:=ds:C1482.Users.query("identifier = :1"; $identifier).first()
	
	If ($user#Null:C1517)
		If (Verify password hash:C1534($password; $user.password))
			Session:C1714.setPrivileges(New object:C1471("roles"; $user.role))
			$result:="Your are loggued as "+$user.role
		End if 
	Else 
	End if 
	
	
exposed Function hasPrivilege($privilege : Text)->$result : Text
	
	If (Session:C1714.hasPrivilege($privilege))
		$result:="The session contains the "+$privilege+" privilege"
	End if 
	
	
exposed Function clearPrivileges()
	Session:C1714.clearPrivileges()
	