instance creation
newFrom: aString 
	self assert: aString isString.
	^ self class fromString: aString