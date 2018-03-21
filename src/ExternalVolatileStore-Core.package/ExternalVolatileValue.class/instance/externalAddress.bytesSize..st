initialization
externalAddress: anExternalAddress bytesSize: anInteger 
	self 
		assert: anExternalAddress class = ExternalAddress 
		description: 'It should be instance of ExternalAddress'.
	self assert: anInteger isInteger.
	self assert: anInteger >= 0.
	bytesSize := anInteger.
	externalAddress := anExternalAddress.