Case of 
		
	: (Form event code:C388=On Load:K2:1)
		
		btnTrace:=False:C215
		
		InitInfo
		
		READ WRITE:C146(*)
		
	: (Form event code:C388=On Page Change:K2:54)
		
		If (FORM Get current page:C276=2)
			Form:C1466.roles:=_Directions[0]
			Form:C1466.deleteRequest:=_Directions[1]
		End if 
		
End case 

