private
store: aString
	"Store value to system settings"
	self assert: settingId isSymbol.
	self assert: self persistence notNil.
	self persistence storeIdentifier: self settingNodeIdentifier.