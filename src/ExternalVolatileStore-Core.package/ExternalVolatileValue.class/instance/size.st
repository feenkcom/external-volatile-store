accessing
size
	^ self hasValue 
		ifTrue: [ self bytesSize ]
		ifFalse: [ 0 ]