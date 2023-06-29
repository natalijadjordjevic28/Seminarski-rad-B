Class {
	#name : #MobileTest,
	#superclass : #TestCase,
	#classInstVars : [
		'testDiscountApplied',
		'm',
		'testMobileCreation'
	],
	#category : #MyMobileStore
}

{ #category : #running }
MobileTest >> testDiscountApplied [
| m |
m := Mobile new price: 1000.
m setDiscount21.
self assert: m price equals: 800.
]

{ #category : #running }
MobileTest >> testLessThan500 [
	| m |
	m := Mobile new price: 300.
	self assert: m lessThan500. 
]
