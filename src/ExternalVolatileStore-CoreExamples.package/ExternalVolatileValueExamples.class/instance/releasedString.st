string
releasedString
	<gtExample>
	<label: 'String is lost on image exit'>
	| value |
	value := ExternalVolatileString new.
	value instVarNamed: #externalAddress put: ExternalAddress new.
	self assert: value hasValue not.
	self assert: value size equals: 0.
	self assert: value string equals: ''.
	self assert: value class equals: ExternalVolatileString.
	^ value