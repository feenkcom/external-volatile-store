accessing
ensureReloadableVolatileString
	reloadableVolatileString
		ifNil: [ reloadableVolatileString := AutoReloadableVolatileSettingValue new
						settingId: #reloadableVolatileString;
						string: '';
						yourself ]