initialization
string: aString
	| alreadyHasValue |
	alreadyHasValue := self hasValue.
	(self hasSameValue: aString) ifTrue: [ ^ self ].
	super string: aString.
	"Store only not-empty (default) values"
	(alreadyHasValue not and: [ aString isEmpty ]) ifTrue: [ ^ self ].
	"Add yourself to the system setting."
	self settings.
	self store: aString