private
reloadValue
	self ignoreReloadValueDuring: [ 
		| tree nodes |
		tree := self persistence settingTree.
		nodes := tree deeplySelect: [ :node | 
			node settingDeclaration name = settingId ].
		self persistence updateSettingNodes: nodes ].