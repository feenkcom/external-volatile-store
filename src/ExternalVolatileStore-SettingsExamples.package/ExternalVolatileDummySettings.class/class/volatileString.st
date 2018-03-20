accessing
volatileString
	volatileString ifNil: [ volatileString := ExternalVolatileValue fromString: '' ].
	^ volatileString value