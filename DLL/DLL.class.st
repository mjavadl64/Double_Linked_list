"
This class create an Double linked list whit two instant variables: Head and Tail , those keep information of begin and end of the list.
"
Class {
	#name : #DLL,
	#superclass : #Object,
	#instVars : [
		'head',
		'tail'
	],
	#category : #DLL
}

{ #category : #adding }
DLL >> add: anObject [
	^ self addLast: anObject 
]

{ #category : #adding }
DLL >> add: anObject after: otherObject [

|temp objectexist addObject|
objectexist := Nodes new.
addObject := Nodes new.
temp := Nodes new.
addObject data: anObject .
"Searche the otherObject(objectexist) in the list"
(self include: otherObject) ifNil: [ ^false ].
objectexist := self include: otherObject.
temp := objectexist  next.
"We check that if otherObject is the end of list we use method add"
(tail data = otherObject   ) 
  ifTrue: [self add: anObject.
				^objectexist  ].
"objectexist  ifFalse:  [^ ErrorDialogWindow ]."
		addObject pre: objectexist .
		addObject next: objectexist  next.
		objectexist  next: addObject .
		temp pre: addObject  .
	



]

{ #category : #adding }
DLL >> add: anObject befor: otherObject [

|temp objectexist addObject|
objectexist := Nodes new.
addObject := Nodes new.
temp := Nodes new.
addObject data: anObject .
"Searche the otherObject(objectexist) in the list"
(self include: otherObject)  ifNil: [ ^false ].
objectexist := self include: otherObject. 
temp := objectexist pre. 

"We check that if otherObject is in the top(head) of list we use method addFirst"
(head data = otherObject ) 
 ifTrue: [ ^self addFirst: anObject  ].
"objectexist isFalse: [ ^ErrorDialogWindow  ]."
  addObject next: objectexist.
 addObject pre: objectexist  pre.
 objectexist pre: addObject. 
 temp next: addObject. 
	

]

{ #category : #adding }
DLL >> addFirst: anObject [

|temp|
temp:= Nodes new.
temp data: anObject .
temp next: head.
head ifNotNil: [ head pre: temp ]. 
tail := head. 
head := temp. 

]

{ #category : #adding }
DLL >> addLast: anObject [

|temp|
temp:= Nodes new.
temp data: anObject .
tail ifNotNil: [ tail next: temp.
						temp pre: tail ].
head ifNil: [ head := temp  ].
tail := temp.


]

{ #category : #calcul }
DLL >> elements [

"In this method we get the elements and send them to an OrderedCollection"
|head2 element|
element := OrderedCollection new.
head2 := head.
head2  ifNil: [ ^0 ].
[head2 isNotNil] whileTrue: [
	  element add: head2 data.
	  head2 := head2 next ].
^ element 
]

{ #category : #adding }
DLL >> include: anObjet [

|headTemp|
headTemp := head.
[headTemp isNotNil] whileTrue: [ 
	(headTemp data = anObjet ) 
		ifTrue: [ ^headTemp  ].
	headTemp := headTemp next ].
^ nil 
]

{ #category : #calcul }
DLL >> sizOfDll [

|temp counter|
counter := 0.
head ifNil: [^0].
temp := head.
[temp isNotNil] whileTrue: [ 
	 counter := counter + 1.
	 temp := temp next].
^ counter
]
