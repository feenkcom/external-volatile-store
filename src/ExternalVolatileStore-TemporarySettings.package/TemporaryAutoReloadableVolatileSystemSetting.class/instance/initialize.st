initialization
initialize
	super initialize.
	settingId := TemporarySystemSettings newSettingId.
	self class finalizationRegistry add: self.