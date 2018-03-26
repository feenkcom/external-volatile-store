private
addYourselfToSettings
	settings ifNotNil: [ :aWeakValueDictionary |
		settingId ifNotNil: [ :aSymbol | 
			aWeakValueDictionary at: aSymbol put: self ] ]