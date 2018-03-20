initialization
externalAddress: anExternalAddress bytesSize: anInteger 
	self assert: anExternalAddress class equals: ExternalAddress.
	self assert: anInteger isInteger.
	self assert: anInteger >= 0.
	bytesSize := anInteger.
	externalAddress := anExternalAddress.