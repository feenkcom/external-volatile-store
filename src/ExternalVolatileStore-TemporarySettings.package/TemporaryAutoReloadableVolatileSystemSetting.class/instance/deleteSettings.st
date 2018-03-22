finalization
deleteSettings
	| nodes usedPersistence |
	self settings ifNotNil: [ :aWeakDictionary | 
		aWeakDictionary 
			removeKey: self settingId 
			ifAbsent: [ "ignore" ] ].
	usedPersistence := self persistence.
	usedPersistence ifNil: [ ^ Transcript show: 'Persistence is nil!'; cr ].
	nodes := usedPersistence
		settingsNodesFromIdentifiers: {self settingNodeIdentifier}.
	nodes ifEmpty: [ ^ self ].
	usedPersistence deleteSettingNodes: nodes