instance creation
fromString: aString settingId: settingId 
	^ self new
		value: (ExternalVolatileValue fromString: aString)
		settingId: settingId