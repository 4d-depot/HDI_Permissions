Class extends DataStoreImplementation


exposed Function authenticate($identifier : Text; $password : Text)->$result : Text
	
	var $user : cs:C1710.UsersEntity
	
	Session:C1714.clearPrivileges()
	
	$result:="Your are authenticated as Guest"
	
	$user:=ds:C1482.Users.query("identifier = :1"; $identifier).first()
	
	If ($user#Null:C1517)
		If (Verify password hash:C1534($password; $user.password))
			Session:C1714.setPrivileges(New object:C1471("roles"; $user.role))
			$result:="Your are authenticated as "+$user.role
		End if 
	End if 
	
	
exposed Function hasPrivilege($privilege : Text)->$result : Boolean
	
	$result:=Session:C1714.hasPrivilege($privilege)
	
	
exposed Function clearPrivileges()
	Session:C1714.clearPrivileges()
	