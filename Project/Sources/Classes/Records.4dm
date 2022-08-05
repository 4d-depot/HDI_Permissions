Class extends DataClass


exposed Function deleteFrom($date : Text)->$result : Text
	
	$toDelete:=This:C1470.query("date <= :1"; Date:C102($date))
	
	$notDropped:=$toDelete.drop()
	
	If ($notDropped.length#0)
		$result:="Error while deleting records"
	Else 
		$result:="You have successfully deleted "+String:C10($toDelete.length)+" records."
	End if 