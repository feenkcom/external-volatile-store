string
volatileString
	<gtExample>
	<label: 'Store string in external memory'>
	| value |
	value := ExternalVolatileValue fromString: self loremIpsum.
	self assert: value hasValue.
	self assert: value size equals: self loremIpsum size.
	self assert: value string equals: self loremIpsum.
	self assert: value class equals: ExternalVolatileString.
	^ value