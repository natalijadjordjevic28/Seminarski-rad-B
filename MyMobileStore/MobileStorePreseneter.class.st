Class {
	#name : #MobileStorePreseneter,
	#superclass : #SpPresenter,
	#instVars : [
		'list1'
	],
	#category : #MyMobileStore
}

{ #category : #specs }
MobileStorePreseneter >> defaultSpec [  
^ SpBoxLayout newVertical
	add: (SpBoxLayout newHorizontal
				add:
					(SpBoxLayout newVertical
						add: 'Mobilni telefoni' withConstraints: [ :constraints | constraints height: self labelHeight ];
						add: #list1;
						yourself));
	yourself

]

{ #category : #initialization }
MobileStorePreseneter >> initializePresenter [ 
| kolekcija |

kolekcija := MobileCollection new.
kolekcija createDemoMobiles.

list1 := self newList.

list1
		items: kolekcija allMobilesPrinting.


]

{ #category : #'as yet unclassified' }
MobileStorePreseneter >> intializeWindow: aWindowPresenter [
aWindowPresenter 
title: 'Kolekcija telefona';
initialExtent: 500@400
]

{ #category : #accessing }
MobileStorePreseneter >> list1 [ 
^ list1
]
