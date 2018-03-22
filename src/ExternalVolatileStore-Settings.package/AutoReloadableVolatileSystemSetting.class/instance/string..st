initialization
string: aString 
	externalVolatileValue := ExternalVolatileValue fromString: aString.
	"Add yourself to the system setting."
	self settings.
	self store: aString.
	