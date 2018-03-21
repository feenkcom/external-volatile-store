instance creation
fromString: aString 
	self assert: aString isString description: 'It should be a string'.
	^ (ExternalVolatileString newFromBytes: aString utf8Encoded)
			stringSize: aString size;
			yourself.