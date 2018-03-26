printing
printOn: aStream
	settingId ifNil: [ ^ super printOn: aStream ].
	aStream nextPutAll: 'Setting of '.
	aStream print: settingId.
	externalVolatileValue 
		ifNotNil: [ :value | 
			aStream nextPutAll: ', type: '.
			value printOn: aStream ]