


If (btnTrace)
	TRACE:C157
End if 

Case of 
	: (Form event code:C388=On Clicked:K2:4)
		
		SHOW ON DISK:C922(Folder:C1567(fk database folder:K87:14).platformPath+"Project"+Folder separator:K24:12+"Sources"+Folder separator:K24:12+"roles.json")
		
End case 