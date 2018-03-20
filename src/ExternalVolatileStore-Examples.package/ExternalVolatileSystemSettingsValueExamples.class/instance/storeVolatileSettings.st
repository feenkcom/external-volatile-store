settings
storeVolatileSettings
	<gtExample>
	<label: 'Store a value to the volatile settings'>
	| persistence |
	persistence := self systemSettingsPersistence.
	self assert: persistence fileReference exists not.
	persistence storeSettingNode: self volatileSettingNode.
	self assert: persistence fileReference exists.
	self assert: persistence fileReference size > 0.