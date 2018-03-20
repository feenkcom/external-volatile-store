persistence
emptySystemSettingsPersistence
	<gtExample>
	<label: 'Recently initialized system settings are empty'>
	| systemSettings |
	systemSettings := self systemSettingsPersistence.
	self assert: systemSettings allStoredSettings isEmpty.
	^ systemSettings