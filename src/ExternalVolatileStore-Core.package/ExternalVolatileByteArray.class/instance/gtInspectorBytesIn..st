gt-inspector-extension
gtInspectorBytesIn: composite
	<gtInspectorPresentationOrder: 1>
	^ composite fastTable
		title: [ 'Items' translated ];
		display: [ self bytes ];
		when: [ self hasValue ];
		beMultiple;
		enableElementIndex;
		column: 'Index' evaluated: [ :value :index | index asString ] width: 50;
		column: 'Item' evaluated: [ :value | GTObjectPrinter asTruncatedTextFrom: value ];
		send: [ :result | 
			result isNil
				ifTrue: [ nil ]
				ifFalse: [ result size = 1
					ifTrue: [result anyOne ]  
					ifFalse: [ ByteArray species withAll: result ] ] ];
		yourself