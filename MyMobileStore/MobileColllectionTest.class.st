Class {
	#name : #MobileColllectionTest,
	#superclass : #TestCase,
	#instVars : [
		'mobilestore',
		'firstMobile',
		'secondMobile'
	],
	#category : #MyMobileStore
}

{ #category : #running }
MobileColllectionTest >> setUp [ 
	super setUp.
	mobilestore  := MobileColllection  current.
	mobilestore  removeAllMobiles.
	firstMobile := Mobile brand: 'Samsung' model: 'A50' color: 'Violet'.
   firstMobile price: 500.
	mobilestore addMobile: firstMobile.
	secondMobile  := Mobile  brand: 'Samsung' model: 'A13' color: 'Black'.

]

{ #category : #running }
MobileColllectionTest >> tearDown [ 
	MobileColllection  reset

]

{ #category : #running }
MobileColllectionTest >> testAddMobile [
	mobilestore addMobile: secondMobile.
	self assert: mobilestore  size equals: 2.


]

{ #category : #running }
MobileColllectionTest >> testAllCategories [ 
	mobilestore addMobile: secondMobile.
	secondMobile model: 'A13'.
	self assert: mobilestore  allModels  size equals: 2.

]

{ #category : #running }
MobileColllectionTest >> testAllMobileWithSameModel [ 
	self assert: (mobilestore allMobilesFromModel:  'A50') size equals: 1


]

{ #category : #running }
MobileColllectionTest >> testAllMobiles [ 
	mobilestore addMobile: secondMobile.
	self assert: mobilestore  allMobiles size equals: 2.


]

{ #category : #running }
MobileColllectionTest >> testAllMobilesWithPrice [ 
	mobilestore  addMobile: secondMobile.
	self assert: mobilestore allMobilesWithPrice  size equals: 1

]

{ #category : #running }
MobileColllectionTest >> testAllMobilesWithPriceAndModel [ 
	mobilestore  addMobile: secondMobile  .
	secondMobile price: 500.
	self assert: (mobilestore allMobilesFromModel:  'A50') size equals: 1.
	self assert: mobilestore  allMobilesWithPrice  size equals: 2.

]

{ #category : #running }
MobileColllectionTest >> testRemoveAllMobiles [
	mobilestore  removeAllMobiles.
	self assert: mobilestore  size equals: 0.

]

{ #category : #running }
MobileColllectionTest >> testSize [ 
	self assert: mobilestore  size equals: 1.

]
