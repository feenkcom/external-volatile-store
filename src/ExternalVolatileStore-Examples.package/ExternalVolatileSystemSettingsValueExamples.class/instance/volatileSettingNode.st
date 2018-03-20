settings
volatileSettingNode
	<gtExample>
	<label: 'Volatile setting node'>
	| node |
	node := self mockSettingTree nodeNamed: self volatileSettingName.
	self assert: node notNil.
	self assert: node realValue isString.
	^ node