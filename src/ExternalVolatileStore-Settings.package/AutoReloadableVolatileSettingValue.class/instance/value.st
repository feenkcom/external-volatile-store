accessing
value
	<return: #String>
	externalVolatileValue hasValue ifFalse: [ self reloadValue ].
	^ externalVolatileValue value