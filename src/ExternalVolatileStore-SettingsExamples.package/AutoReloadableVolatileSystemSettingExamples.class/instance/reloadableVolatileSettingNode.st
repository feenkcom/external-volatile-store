settings - reloadable
reloadableVolatileSettingNode
	<gtExample>
	<label: 'Reloadable volatile setting node'>
	| node |
	node := self mockSettingTree nodeNamed: self reloadableVolatileSettingName.
	self assert: node notNil.
	self assert: node realValue isString.
	^ node