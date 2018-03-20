private
newReloadableVolatileFromString: aString
	^ AutoReloadableVolatileSystemSetting
		fromString: aString
		settingId: #reloadableVolatileString