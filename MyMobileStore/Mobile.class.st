Class {
	#name : #Mobile,
	#superclass : #Object,
	#instVars : [
		'brand',
		'model',
		'price',
		'color'
	],
	#classInstVars : [
		'brand',
		'price',
		'model',
		'color'
	],
	#category : #MyMobileStore
}

{ #category : #accessing }
Mobile class >> brand [ 
^ brand
]

{ #category : #accessing }
Mobile class >> brand: aString [  
brand:= aString 
]

{ #category : #'as yet unclassified' }
Mobile class >> brand: aBrand model: aModel color: aColor [ 
	^ self new
	brand: aBrand;
	author: aModel;
	price: 0;
	color: aColor;
	yourself
]

{ #category : #accessing }
Mobile class >> color [  
^ color
]

{ #category : #accessing }
Mobile class >> color: aString4 [  
color:= aString4 
]

{ #category : #printing }
Mobile class >> hasCost [ 
	^ price > 0
]

{ #category : #printing }
Mobile class >> lessThan500 [ 
^ price < 500
]

{ #category : #accessing }
Mobile class >> model [
^ model
]

{ #category : #accessing }
Mobile class >> model: aString2 [  
model:= aString2 
]

{ #category : #accessing }
Mobile class >> price [
^ price
]

{ #category : #accessing }
Mobile class >> price: aDouble [  
price:= aDouble 
]

{ #category : #printing }
Mobile class >> printMobile [
^ brand , ' - ' ,model , ', ' , color
]

{ #category : #initialization }
Mobile class >> setDiscount21 [
	price := price - (price * 0.2)
]

{ #category : #'as yet unclassified' }
Mobile >> author: aString [ 
	self shouldBeImplemented.
]

{ #category : #accessing }
Mobile >> brand [
^ brand
]

{ #category : #accessing }
Mobile >> brand: aString [
brand := aString
]

{ #category : #'as yet unclassified' }
Mobile >> brand: aBrand model: anModel price: aPrice color: aColor [
 ^ self new 
   brand: aBrand;
	model: anModel;
	price: 0;
	color: aColor;
	
	yourself  
	


]

{ #category : #accessing }
Mobile >> color [ 
^ color
]

{ #category : #accessing }
Mobile >> color: aString [
color := aString 
]

{ #category : #testing }
Mobile >> hasPrice [ 
	^ price > 0
]

{ #category : #'as yet unclassified' }
Mobile >> lessThan500 [ 
^ price < 500
]

{ #category : #accessing }
Mobile >> model [
^ model
]

{ #category : #accessing }
Mobile >> model: aString [ 
model := aString
]

{ #category : #accessing }
Mobile >> price [
^ price
]

{ #category : #accessing }
Mobile >> price: aDouble [ 
price := aDouble 
]

{ #category : #printing }
Mobile >> printMobile [ 
^ brand , ' - ' , model , ' ' , (price greaseString) , ', ' , color

]

{ #category : #initialization }
Mobile >> setDiscount21 [ 
	price := price - (price * 0.2)
]
