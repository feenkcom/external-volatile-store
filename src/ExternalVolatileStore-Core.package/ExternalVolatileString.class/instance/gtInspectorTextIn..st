gt-inspector-extension
gtInspectorTextIn: composite
	<gtInspectorPresentationOrder: 1>
	^ composite text
		title: [ 'String' translated ];
		display: [ self string truncateWithElipsisTo: 100000 ];
		when: [ self hasValue ];
		yourself 