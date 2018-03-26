settings - release
releaseVolatileString
	<gtExample>
	<label: 'Volatile string should return empty string after release'>
	| externalVolatileString |
	self setVolatileString.
	"Let's simulate a release that happens when image is closed."
	externalVolatileString := ExternalVolatileDummySettings instVarNamed: #volatileString.
	externalVolatileString instVarNamed: #externalAddress put: ExternalAddress new.
	"The value should be lost. In other words, a default value is returned instead."
	self assert: self getVolatileString equals: self emptyVolatileStringValue.
	^ self getVolatileString