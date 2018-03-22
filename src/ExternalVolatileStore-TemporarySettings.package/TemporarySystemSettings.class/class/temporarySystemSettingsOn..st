settings
temporarySystemSettingsOn: aBuilder
	<systemsettings>
	(aBuilder group: self groupId)
		label: 'Temporaty Volatile Secure Settings';
		description: self groupDescription;
		with: [ | values |
			values := self temporaryVolatileSettingItems.
			values
				do: [ :each | 
					each
						ifNotNil: [ (aBuilder setting: each settingId)
								target: each;
								label: each label;
								description: self itemDescription;
								selector: #value;
								setSelector: #value:;
								type: #Password ] ] ]