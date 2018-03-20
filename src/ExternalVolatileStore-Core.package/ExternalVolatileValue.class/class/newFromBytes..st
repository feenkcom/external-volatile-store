private
newFromBytes: bytes 
	| externalAddress |
	externalAddress := ExternalAddress gcallocate: bytes size.
	bytes withIndexDo: [ :byte :index | 
		externalAddress byteAt: index put: byte ].
	^ self new
		externalAddress: externalAddress 
		bytesSize: bytes size;
		yourself.