settings - release
releaseVolatileString
	<gtExample>
	<label: 'Volatile string should return empty string after release'>
	| externalVolatileString |
	self setVolatileString.
	externalVolatileString := ExternalVolatileDummySettings instVarNamed: #volatileString.
	externalVolatileString instVarNamed: #externalAddress put: ExternalAddress new.
	self assert: self getVolatileString equals: self emptyVolatileStringValue.
	^ self getVolatileString