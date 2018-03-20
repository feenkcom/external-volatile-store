testing
hasValue
	"Return true if the external address keeps a value"
	<return: #Boolean>
	^ externalAddress 
		ifNotNil: [ :anAddress | anAddress isNull not ]
		ifNil: [ false ]