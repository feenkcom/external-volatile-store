initialization
string: aString 
	(self hasSameValue: aString) ifTrue: [ ^ self ].
	externalVolatileValue := ExternalVolatileValue fromString: aString.