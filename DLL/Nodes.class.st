"
This class creates Nodes and has tress instant variabels: Data, Next, Pre
They keep Data and Next link and Previuse link of each nodes.
"
Class {
	#name : #Nodes,
	#superclass : #Object,
	#instVars : [
		'data',
		'pre',
		'next'
	],
	#category : #DLL
}

{ #category : #accessing }
Nodes >> data [
	^ data
]

{ #category : #accessing }
Nodes >> data: anObject [
	data := anObject 
]

{ #category : #accessing }
Nodes >> next [
	^ next
]

{ #category : #accessing }
Nodes >> next: anObject [
	next := anObject 
]

{ #category : #accessing }
Nodes >> pre [
	^ pre
]

{ #category : #accessing }
Nodes >> pre: anObject [
	pre := anObject 
]
