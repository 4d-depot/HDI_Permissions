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
	
	
exposed Function authenticate2($identifier : Text; $password : Text)->$result : Text
	
	var $users : cs:C1710.UsersSelection
	var $user : cs:C1710.UsersEntity
	
	Session:C1714.clearPrivileges()
	
	$result:="Your are authenticated as Guest"
	
	ON ERR CALL:C155("errorMethod")
	lastError:=0
	$users:=ds:C1482.Users.query("identifier = :1"; $identifier)
	ON ERR CALL:C155("")
	
	If ($users#Null:C1517)
		$user:=$users.first()
		If ($user#Null:C1517)
			If (Verify password hash:C1534($password; $user.password))
				Session:C1714.setPrivileges(New object:C1471("roles"; $user.role))
				$result:="Your are authenticated as "+$user.role
			End if 
		Else 
			$result:=lastErrorMessage
		End if 
	Else 
		$result:=lastErrorMessage
	End if 