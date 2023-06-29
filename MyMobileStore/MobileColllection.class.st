Class {
	#name : #MobileColllection,
	#superclass : #Object,
	#instVars : [
		'mobiles'
	],
	#classVars : [
		'uniqueInstance'
	],
	#category : #myMobileStore
}

{ #category : #'as yet unclassified' }
MobileColllection class >> addMobile: aMobile [ 
	self shouldBeImplemented.
]

{ #category : #initialization }
MobileColllection class >> current [
	self shouldBeImplemented.
]

{ #category : #removing }
MobileColllection class >> removeAllMobiles [
	self shouldBeImplemented.
]

{ #category : #'initialization - private' }
MobileColllection class >> reset [
	self shouldBeImplemented.
]

{ #category : #accessing }
MobileColllection >> addMobile: aMobile [
	mobiles add: aMobile 


]

{ #category : #accessing }
MobileColllection >> allMobiles [
	^ mobiles


]

{ #category : #accessing }
MobileColllection >> allMobilesFromModel: aModel [ 
	^ mobiles select: [ :m | m model  = aModel ] 

]

{ #category : #'as yet unclassified' }
MobileColllection >> allMobilesPrinting [ 
	^ mobiles collect: [ :m | m printMobile  ] 
]

{ #category : #'as yet unclassified' }
MobileColllection >> allMobilesWithPrice [ 
	^ mobiles select: [ :b | b hasCost ]
]

{ #category : #'as yet unclassified' }
MobileColllection >> allModels [ 
	^ (self allModels collect: [ :m | m model ]) asSet
]

{ #category : #'as yet unclassified' }
MobileColllection >> createDemoMobiles [ 
	^ self
		addMobile: (Mobile new brand: 'Samsung'; model: 'A50'; price: 500; color: 'Violet') yourself;
		addMobile: (Mobile new brand: 'Samsung'; model: 'A13'; price: 700; color: 'Black') yourself;
      addMobile: (Mobile new brand: 'Samsung'; model: 'A20'; price: 900; color: 'Rose') yourself;
      addMobile: (Mobile new brand: 'IphoneX'; model: 'X'; price: 900; color: 'Yellow') yourself;
      addMobile: (Mobile new brand: 'Iphone11'; model: '11'; price: 1500; color: 'White') yourself;
      addMobile: (Mobile new brand: 'Iphone13'; model: '13'; price: 1700; color: 'Grey') yourself


]

{ #category : #accessing }
MobileColllection >> current [ 
	"singlton"
	^ uniqueInstance ifNil: [ uniqueInstance := self new ]

]

{ #category : #'as yet unclassified' }
MobileColllection >> initialize [ 
	super initialize.
	mobiles := OrderedCollection new.


]

{ #category : #'as yet unclassified' }
MobileColllection >> removeAllMobiles [
	mobiles := OrderedCollection new


]

{ #category : #'as yet unclassified' }
MobileColllection >> removeMobiles: aMobile [ 
	mobiles remove: aMobile 

]

{ #category : #accessing }
MobileColllection >> reset [ 
	uniqueInstance := nil


]

{ #category : #accessing }
MobileColllection >> size [ 
	^ mobiles size
]
