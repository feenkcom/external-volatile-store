initialization
string: aString 
	super string: aString.
	"Add yourself to the system setting."
	self settings.
	self store: aString.
	