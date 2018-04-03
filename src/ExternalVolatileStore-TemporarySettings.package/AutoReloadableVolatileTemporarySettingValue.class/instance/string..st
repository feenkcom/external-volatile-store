initialization
string: aString
	super string: aString.
	(self hasSameValue: aString) ifTrue: [ ^ self ].
	"Add yourself to the system setting."
	self settings.
	self store: aString