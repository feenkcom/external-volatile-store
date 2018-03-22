accessing
temporaryVolatileSettingItems
	^ temporaryVolatileSettings ifNil: [ temporaryVolatileSettings := WeakValueDictionary new ]