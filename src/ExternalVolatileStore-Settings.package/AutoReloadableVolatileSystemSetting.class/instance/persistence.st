accessing
persistence
	^ persistence ifNil: [ SystemSettingsPersistence default ]