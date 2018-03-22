accessing
settingNodeIdentifier
	<return: #String>
	^ String streamContents: [ :aStream | 
		aStream print: TemporarySystemSettings groupId.
		aStream print: self settingId ]