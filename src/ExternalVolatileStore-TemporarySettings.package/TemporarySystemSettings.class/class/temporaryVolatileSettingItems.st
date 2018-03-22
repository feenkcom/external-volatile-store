accessing
temporaryVolatileSettingItems
	"All registered temporary system settings"
	^ temporaryVolatileSettings ifNil: [ temporaryVolatileSettings := WeakValueDictionary new ]