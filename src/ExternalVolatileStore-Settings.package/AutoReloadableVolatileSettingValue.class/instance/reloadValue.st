private
reloadValue
	self trace: 'reload value: '; traceCr: self settingId.
	self
		ignoreReloadValueDuring: [ | tree nodes |
			tree := self persistence settingTree.
			nodes := tree
				deeplySelect: [ :node | node settingDeclaration name = settingId ].
			self assertNodes: nodes.
			self persistence updateSettingNodes: nodes.
			externalVolatileValue hasValue ifFalse: [ 
				externalVolatileValue := externalVolatileValue newEmptyValue ]. ]