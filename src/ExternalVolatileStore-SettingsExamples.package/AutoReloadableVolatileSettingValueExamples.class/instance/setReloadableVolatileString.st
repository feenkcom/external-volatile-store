settings - reloadable
setReloadableVolatileString
	<gtExample>
	<label: 'Set a reloadable value of the volatile setting'>
	<after: #setEmptyReloadableVolatileString>
	| value |
	value := ExternalVolatileDummySettings reloadableVolatileString: self volatileStringValue.
	self assert: self getReloadableVolatileString equals: self volatileStringValue.
	^ value