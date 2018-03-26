settings
releasedValueHasDefaultValue
	<gtExample>
	<label: 'Simulate loading image on a different computer where volatile object has a default value'>
	| temporaryValue defaultValue file |
	temporaryValue := self releaseVolatileString.
	"Let's simulate new computer without the settings."
	file := temporaryValue persistence fileReference.
	file delete.
	self assert: file exists not.
	temporaryValue settings removeKey: temporaryValue settingId.
	self assert: (temporaryValue settings includesKey: temporaryValue settingId) not.
	defaultValue := temporaryValue value.
	self assert: defaultValue equals: ''.
	^ temporaryValue