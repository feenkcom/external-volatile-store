bytes
releasedBytes
	<gtExample>
	<label: 'Bytes are lost on image exit'>
	| value |
	value := ExternalVolatileByteArray new.
	"Let's simulate a release that happens when image is closed."
	value instVarNamed: #externalAddress put: ExternalAddress new.
	"The value should be lost. In other words, a default value is returned instead."
	self assert: value hasValue not.
	self assert: value size equals: 0.
	self assert: value bytes equals: #[].
	self assert: value class equals: ExternalVolatileByteArray.
	^ value