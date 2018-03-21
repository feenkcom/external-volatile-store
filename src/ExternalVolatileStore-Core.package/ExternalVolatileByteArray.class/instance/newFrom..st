instance creation
newFrom: aByteArray 
	self assert: aByteArray class = ByteArray description: 'It should be instance of ByteArray'.
	^ self class fromBytes: aByteArray