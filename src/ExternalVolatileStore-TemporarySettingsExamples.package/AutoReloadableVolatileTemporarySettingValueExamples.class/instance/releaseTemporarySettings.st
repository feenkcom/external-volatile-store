settings
releaseTemporarySettings
	<gtExample>
	<label: 'Release temporary settings and remove it from the setting file'>
	| temporaryValue persistence settingId |
	temporaryValue := self setVolatileString.
	settingId := temporaryValue settingId.
	self assert: settingId notNil.
	persistence := temporaryValue persistence.
	"Simulate garbage collection"
	temporaryValue := nil.
	"temporaryValue deleteSettings."
	self assert: persistence fileReference exists.
	"self assert: persistence fileReference size equals: 3."
	self flag: 'It does not work because the temporaryValue object does not know settingId at the moment of finalization'.
	^ persistence fileReference