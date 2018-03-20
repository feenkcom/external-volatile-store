accessing
reloadableVolatileString
	reloadableVolatileString
		ifNil: [ reloadableVolatileString := self
				newReloadableVolatileFromString: '' ].
	^ reloadableVolatileString value