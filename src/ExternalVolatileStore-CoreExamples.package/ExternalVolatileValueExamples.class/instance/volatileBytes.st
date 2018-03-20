bytes
volatileBytes
	<gtExample>
	<label: 'Store bytes in external memory'>
	| value |
	value := ExternalVolatileValue fromBytes: self bytes.
	self assert: value hasValue.
	self assert: value size equals: self bytes size.
	self assert: value bytes equals: self bytes.
	self assert: value class equals: ExternalVolatileByteArray.
	^ value