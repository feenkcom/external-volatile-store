accessing
settings
	settings ifNil: [ 
		settings := TemporarySystemSettings temporaryVolatileSettingItems.
		self addYourselfToSettings ].
	^ settings