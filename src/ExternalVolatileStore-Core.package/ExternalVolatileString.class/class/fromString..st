instance creation
fromString: aString 
	self assert: aString isString.
	^ (ExternalVolatileString newFromBytes: aString utf8Encoded)
			stringSize: aString size;
			yourself.