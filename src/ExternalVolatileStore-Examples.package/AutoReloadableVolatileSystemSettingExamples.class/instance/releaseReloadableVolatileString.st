settings - release
releaseReloadableVolatileString
	<gtExample>
	<label: 'Reloadable volatile string should return the same value after release'>
	| reloadableVolatileString externalVolatileString persistence |
	self setReloadableVolatileString.
	persistence := self storeReloadableVolatileSetting.
	reloadableVolatileString := ExternalVolatileDummySettings instVarNamed: #reloadableVolatileString.
	reloadableVolatileString persistence: persistence.
	externalVolatileString := reloadableVolatileString instVarNamed: #externalVolatileValue.
	externalVolatileString instVarNamed: #externalAddress put: ExternalAddress new.
	self assert: externalVolatileString hasValue not.
	self assert: self getReloadableVolatileString equals: self volatileStringValue.
	self assert: reloadableVolatileString value equals: self volatileStringValue.
	^ self getReloadableVolatileString