settings
setVolatileString
	<gtExample>
	<label: 'Set a value of the temporary volatile setting'>
	| temporaryValue persistence |
	persistence := self systemSettingsPersistence.
	self assert: persistence fileReference exists not.	
	temporaryValue := TemporaryAutoReloadableVolatileSystemSetting new.
	temporaryValue persistence: persistence.
	temporaryValue settings: self exampleSettings.
	temporaryValue string: self volatileStringValue.
	self assert: temporaryValue settingId isSymbol.
	self assert: temporaryValue persistence equals: persistence.
	self assert: temporaryValue settings equals: self exampleSettings.
	self assert: temporaryValue value equals: self volatileStringValue.
	self assert: (temporaryValue class finalizationRegistry includes: temporaryValue).
	self assert: (temporaryValue settings includes: temporaryValue).
	self assert: persistence fileReference exists.
	self assert: persistence fileReference size > 10.
	^ temporaryValue