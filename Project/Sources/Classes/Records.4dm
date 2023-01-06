Class extends DataClass


exposed Function deleteOldRecords($date : Text)->$result : Text
	
	var $toDelete; $notDropped : cs:C1710.RecordsSelection
	
	
	$toDelete:=This:C1470.query("creationDate <= :1"; Date:C102($date))
	
	$notDropped:=$toDelete.drop()
	
	If ($notDropped.length#0)
		$result:="Error while deleting records"
	Else 
		$result:="You have successfully deleted "+String:C10($toDelete.length)+" records."
	End if 
	
	
exposed Function create($data : Object)->$result : Text
	
	var $record : cs:C1710.RecordsEntity
	var $status : Object
	
	$record:=This:C1470.new()
	$record.fromObject($data)
	$status:=$record.save()