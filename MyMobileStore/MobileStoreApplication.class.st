Class {
	#name : #MobileStoreApplication,
	#superclass : #SpApplication,
	#classInstVars : [
		'start'
	],
	#category : #MyMobileStore
}

{ #category : #'as yet unclassified' }
MobileStoreApplication class >> run [
	self shouldBeImplemented.
]

{ #category : #initialization }
MobileStoreApplication >> initialize [
self 
		useBackend: #Morphic 
		with: MobileStoreConfiguration  new.

]

{ #category : #running }
MobileStoreApplication >> start [ 
 ^ (self new: MobileStorePreseneter) openWithSpec.

]
