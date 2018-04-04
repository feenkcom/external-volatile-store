settings
setEmptyString
	<gtExample>
	<label: 'Empty string (default value) is not stored by default'>
	| temporaryValue persistence |
	persistence := self systemSettingsPersistence.
	self assert: persistence fileReference exists not.	
	temporaryValue := AutoReloadableVolatileTemporarySettingValue new.
	temporaryValue persistence: persistence.
	temporaryValue settings: self exampleSettings.
	temporaryValue string: self emptyStringValue.
	self assert: temporaryValue settingId isSymbol.
	self assert: temporaryValue persistence equals: persistence.
	self assert: temporaryValue settings equals: self exampleSettings.
	self assert: temporaryValue value equals: self emptyStringValue.
	self assert: (temporaryValue class finalizationRegistry includes: temporaryValue).
	self assert: (temporaryValue settings includes: temporaryValue).
	self assert: persistence fileReference exists not.
	^ temporaryValue