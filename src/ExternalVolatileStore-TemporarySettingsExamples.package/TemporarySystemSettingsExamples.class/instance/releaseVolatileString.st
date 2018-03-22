settings
releaseVolatileString
	<gtExample>
	<label: 'Simulate auto-release of the temporary volatile setting value when image is closed'>
	| temporaryValue externalVolatileString |
	temporaryValue := self setVolatileString.
	"Let's simulate a release that happens when image is closed."
	externalVolatileString := temporaryValue instVarNamed: #externalVolatileValue.
	externalVolatileString instVarNamed: #externalAddress put: ExternalAddress new.
	self assert: externalVolatileString hasValue not.
	^ temporaryValue