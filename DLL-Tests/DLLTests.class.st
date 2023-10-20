Class {
	#name : #DLLTests,
	#superclass : #TestCase,
	#instVars : [
		'dll'
	],
	#category : #'DLL-Tests'
}

{ #category : #running }
DLLTests >> setUp [

	super setUp.
	dll := DLL new
]

{ #category : #running }
DLLTests >> testAddAfter [

dll add: 6.
dll add: 43 after: 6.
self assert: dll elements asArray equals: #(6 43).
dll add: 5 after: 43.
self assert: dll elements asArray equals: #(6 43 5).




]

{ #category : #running }
DLLTests >> testAddAfter2 [

dll add: 6.
dll add: 43.
dll add: 10 after: 6.
self assert: dll elements asArray equals: #(6 10 43).




]

{ #category : #running }
DLLTests >> testAddBefor [

dll add: 9.
dll add: 28 befor: 9.
self assert:  dll elements asArray equals: #(28 9).


]

{ #category : #running }
DLLTests >> testAddBefor2 [

dll add: 10.
dll add: 28 befor: 10.
dll add: 30 befor: 10.
self assert: dll elements asArray equals: #(28 30 10).


]

{ #category : #running }
DLLTests >> testAddFirst [ 

dll addFirst: 30.
self assert: dll elements asArray equals: #(30).


]

{ #category : #running }
DLLTests >> testIsNotInclude [

dll add:30.
dll add:45.
self assert: (dll include:40) equals: nil .



]

{ #category : #running }
DLLTests >> testIsNotIncludeAfter [

dll add:10.
self deny: (dll add:30 befor:11).



]

{ #category : #running }
DLLTests >> testIsNotIncludeBefor [

dll add:20.
self deny: (dll add:10 befor:21).



]

{ #category : #running }
DLLTests >> testSiz [

dll add: 10.
dll add: 8.
dll add: 39.
dll add:20 befor:39.
dll add:98 after: 8.
self assert: dll sizOfDll equals: 5.
]

{ #category : #running }
DLLTests >> testSiz0 [

self assert: dll sizOfDll equals: 0.
]

{ #category : #running }
DLLTests >> testToLast [

dll add: 10.
dll add:30.
dll addLast: 400.
self assert: dll elements asArray equals: #(10 30 400).

]

{ #category : #running }
DLLTests >> testTwoElements [

dll add: 5.
dll add: 43.
self assert: dll elements asArray equals: #(5 43).

]

{ #category : #running }
DLLTests >> testZeroElement [ 

self assert: dll elements equals: 0.
]
