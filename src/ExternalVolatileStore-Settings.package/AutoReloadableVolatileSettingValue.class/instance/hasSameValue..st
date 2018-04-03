testing
hasSameValue: aString
	^ self hasValue
		and: [ self value = aString ]