private
assertNodes: nodes
	self
		assert: nodes isEmpty not
		descriptionBlock: [ 'Your system setting id "' , settingId asString , 'does not exist!' ].
	self
		assert: nodes size = 1
		descriptionBlock: [ 'Your system setting id "' , settingId asString
				, 'should be unique!' ]