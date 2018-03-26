settings
reloadReleasedVolatileString
	<gtExample>
	<label: 'Reload previously auto-released value of the temporary volatile setting'>
	| temporaryValue |
	temporaryValue := self releaseVolatileString.
	self assert: temporaryValue value equals: self volatileStringValue.
	^ temporaryValue