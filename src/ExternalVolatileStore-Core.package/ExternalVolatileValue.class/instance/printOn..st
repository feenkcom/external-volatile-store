printing
printOn: aStream
	self class printOn: aStream.
	self hasValue
		ifTrue: [ aStream nextPutAll: ' with value' ]
		ifFalse: [ aStream nextPutAll: ' without value' ].