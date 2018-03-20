settings - manipulation
setVolatileString
	<gtExample>
	<label: 'Set a value of the volatile setting'>
	<after: #setEmptyVolatileString>
	| value |
	value := ExternalVolatileDummySettings volatileString: self volatileStringValue.
	self assert: self getVolatileString equals: self volatileStringValue.
	^ value