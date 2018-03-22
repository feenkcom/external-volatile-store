initialization
string: aString 
	externalVolatileValue := ExternalVolatileValue fromString: aString.
	self store: aString.