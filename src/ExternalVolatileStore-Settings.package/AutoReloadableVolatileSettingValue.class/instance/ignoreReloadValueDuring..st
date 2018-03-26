private
ignoreReloadValueDuring: aBlockClosure 
	IgnoreReloadRequest value ifNotNil: [ ^ self ].
	IgnoreReloadRequest 
		value: true 
		during: [ aBlockClosure value ]