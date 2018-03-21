accessing
ensureReloadableVolatileString
	reloadableVolatileString
		ifNil: [ reloadableVolatileString := AutoReloadableVolatileSystemSetting
				fromString: ''
				settingId: #reloadableVolatileString ]