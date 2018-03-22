accessing
ensureReloadableVolatileString
	reloadableVolatileString
		ifNil: [ reloadableVolatileString := AutoReloadableVolatileSystemSetting new
						settingId: #reloadableVolatileString;
						string: '';
						yourself ]