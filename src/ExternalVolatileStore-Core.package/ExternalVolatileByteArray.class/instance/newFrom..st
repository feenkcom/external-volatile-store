instance creation
newFrom: aByteArray 
	self assert: aByteArray class equals: ByteArray.
	^ self class fromBytes: aByteArray