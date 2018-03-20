accessing
size
	^ self hasValue 
		ifTrue: [ stringSize ]
		ifFalse: [ 0 ]