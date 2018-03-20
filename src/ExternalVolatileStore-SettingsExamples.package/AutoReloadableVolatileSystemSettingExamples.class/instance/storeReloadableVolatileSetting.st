settings - reloadable
storeReloadableVolatileSetting
	<gtExample>
	<label: 'Store a value of the reloadable volatile setting'>
	| persistence |
	persistence := self systemSettingsPersistence.
	self assert: persistence fileReference exists not.
	persistence storeSettingNode: self reloadableVolatileSettingNode.
	self assert: persistence fileReference exists.
	self assert: persistence fileReference size > 0.
	^ persistence