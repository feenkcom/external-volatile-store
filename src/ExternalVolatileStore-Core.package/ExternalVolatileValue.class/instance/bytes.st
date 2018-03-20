accessing
bytes
	<return: #ByteArray>
	self hasValue ifFalse: [ ^ #[] ].
	^ ByteArray streamContents: [ :aStream |
			1 to: bytesSize do: [ :index | 
				aStream nextPut: (externalAddress byteAt: index) ] ].