bytes
releasedBytes
	<gtExample>
	<label: 'Bytes are lost on image exit'>
	| value |
	value := ExternalVolatileByteArray new.
	value instVarNamed: #externalAddress put: ExternalAddress new.
	self assert: value hasValue not.
	self assert: value size equals: 0.
	self assert: value bytes equals: #[].
	self assert: value class equals: ExternalVolatileByteArray.
	^ value