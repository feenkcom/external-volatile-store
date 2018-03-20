persistence
systemSettingsPersistence
	<gtExample>
	<label: 'System settings persistence'>
	| systemSettings |
	systemSettings := SystemSettingsPersistence new.
	systemSettings 
		fileReference: self preferencesFileReference;
		settingTree: self mockSettingTree.
	^ systemSettings