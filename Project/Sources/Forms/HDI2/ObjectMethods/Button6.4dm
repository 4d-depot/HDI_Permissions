

If (btnTrace)
	TRACE:C157
End if 

Use (Storage:C1525)
	Storage:C1525.selections:=New shared collection:C1527()
End use 

DELAY PROCESS:C323(Current process:C322; 240)

Form:C1466.metrics:=ds:C1482.getMetrics()