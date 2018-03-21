private
newFromBytes: bytes 
	| externalAddress |
	self assert: bytes class = ByteArray description: 'It should be instance of ByteArray'. 
	externalAddress := ExternalAddress gcallocate: bytes size.
	bytes withIndexDo: [ :byte :index | 
		externalAddress byteAt: index put: byte ].
	^ self new
		externalAddress: externalAddress 
		bytesSize: bytes size;
		yourself.