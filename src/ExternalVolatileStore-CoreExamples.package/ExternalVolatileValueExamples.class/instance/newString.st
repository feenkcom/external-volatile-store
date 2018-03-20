string
newString
	<gtExample>
	<label: 'Store string in external memory'>
	| value newValue |
	value := self volatileString.
	newValue := value newFrom: self loremIpsum.
	self assert: newValue hasValue.
	self assert: newValue size equals: self loremIpsum size.
	self assert: newValue string equals: self loremIpsum.
	self assert: newValue class equals: ExternalVolatileString.
	self assert: (newValue = value) not.
	^ newValue