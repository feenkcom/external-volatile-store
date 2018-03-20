bytes
newBytes
	<gtExample>
	<label: 'Store bytes in external memory'>
	| value newValue |
	value := self volatileBytes.
	newValue := value newFrom: self bytes.
	self assert: newValue hasValue.
	self assert: newValue size equals: self bytes size.
	self assert: newValue bytes equals: self bytes.
	self assert: newValue class equals: ExternalVolatileByteArray.
	self assert: (newValue = value) not.
	^ newValue