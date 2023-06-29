Class {
	#name : #MobileStoreConfiguration,
	#superclass : #SpApplicationConfiguration,
	#category : #MyMobileStore
}

{ #category : #styling }
MobileStoreConfiguration >> styleSheet [ 
^ super styleSheet, (SpStyleSTONReader fromString: '
	.application [
		.label [
			.title [
				Font { #name: ""Source Code Pro"", #size: 24 },
				Draw { #color: #red }
			]
		]	
	]')
]
