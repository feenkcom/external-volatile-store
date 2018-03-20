private
ignoreReloadValueDuring: aBlockClosure 
	IgnoreReloadValue value ifNotNil: [ ^ self ].
	IgnoreReloadValue 
		value: true 
		during: [ aBlockClosure value ]