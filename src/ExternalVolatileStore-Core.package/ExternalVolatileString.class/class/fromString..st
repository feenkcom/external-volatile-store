instance creation
fromString: aString 
	^ (ExternalVolatileString newFromBytes: aString utf8Encoded)
			stringSize: aString size;
			yourself.