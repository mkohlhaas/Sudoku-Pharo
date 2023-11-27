"
I am a Sudoku solver.
"
Class {
	#name : #Sudoku,
	#superclass : #Object,
	#instVars : [
		'boards'
	],
	#classVars : [
		'Blocks',
		'Cols',
		'Rows'
	],
	#category : #Sudoku
}

{ #category : #accessing }
Sudoku class >> b1: aBoard [

	^ aBoard atRows: #( 1 2 3 ) columns: #( 1 2 3 )
]

{ #category : #accessing }
Sudoku class >> b2: aBoard [

	^ aBoard atRows: #( 1 2 3 ) columns: #( 4 5 6 )
]

{ #category : #accessing }
Sudoku class >> b3: aBoard [

	^ aBoard atRows: #( 1 2 3 ) columns: #( 7 8 9 )
]

{ #category : #accessing }
Sudoku class >> b4: aBoard [

	^ aBoard atRows: #( 4 5 6 ) columns: #( 1 2 3 )
]

{ #category : #accessing }
Sudoku class >> b5: aBoard [

	^ aBoard atRows: #( 4 5 6 ) columns: #( 4 5 6 )
]

{ #category : #accessing }
Sudoku class >> b6: aBoard [

	^ aBoard atRows: #( 4 5 6 ) columns: #( 7 8 9 )
]

{ #category : #accessing }
Sudoku class >> b7: aBoard [

	^ aBoard atRows: #( 7 8 9 ) columns: #( 1 2 3 )
]

{ #category : #accessing }
Sudoku class >> b8: aBoard [

	^ aBoard atRows: #( 7 8 9 ) columns: #( 4 5 6 )
]

{ #category : #accessing }
Sudoku class >> b9: aBoard [

	^ aBoard atRows: #( 7 8 9 ) columns: #( 7 8 9 )
]

{ #category : #accessing }
Sudoku class >> c1: aBoard [

	^ aBoard transposed atRows: #( 1 ) columns: #( 1 2 3 4 5 6 7 8 9 )
]

{ #category : #accessing }
Sudoku class >> c2: aBoard [

	^ aBoard transposed atRows: #( 2 ) columns: #( 1 2 3 4 5 6 7 8 9 )
]

{ #category : #accessing }
Sudoku class >> c3: aBoard [

	^ aBoard transposed atRows: #( 3 ) columns: #( 1 2 3 4 5 6 7 8 9 )
]

{ #category : #accessing }
Sudoku class >> c4: aBoard [

	^ aBoard transposed atRows: #( 4 ) columns: #( 1 2 3 4 5 6 7 8 9 )
]

{ #category : #accessing }
Sudoku class >> c5: aBoard [

	^ aBoard transposed atRows: #( 5 ) columns: #( 1 2 3 4 5 6 7 8 9 )
]

{ #category : #accessing }
Sudoku class >> c6: aBoard [

	^ aBoard transposed atRows: #( 6 ) columns: #( 1 2 3 4 5 6 7 8 9 )
]

{ #category : #accessing }
Sudoku class >> c7: aBoard [

	^ aBoard transposed atRows: #( 7 ) columns: #( 1 2 3 4 5 6 7 8 9 )
]

{ #category : #accessing }
Sudoku class >> c8: aBoard [

	^ aBoard transposed atRows: #( 8 ) columns: #( 1 2 3 4 5 6 7 8 9 )
]

{ #category : #accessing }
Sudoku class >> c9: aBoard [

	^ aBoard transposed atRows: #( 9 ) columns: #( 1 2 3 4 5 6 7 8 9 )
]

{ #category : #'class initialization' }
Sudoku class >> initialize [

	Rows := {
		        [ :b | self class r1: b ].
		        [ :b | self class r1: b ].
		        [ :b | self class r1: b ].
		        [ :b | self class r1: b ].
		        [ :b | self class r1: b ].
		        [ :b | self class r1: b ].
		        [ :b | self class r1: b ].
		        [ :b | self class r1: b ].
		        [ :b | self class r1: b ].
		        [ :b | self class r2: b ].
		        [ :b | self class r2: b ].
		        [ :b | self class r2: b ].
		        [ :b | self class r2: b ].
		        [ :b | self class r2: b ].
		        [ :b | self class r2: b ].
		        [ :b | self class r2: b ].
		        [ :b | self class r2: b ].
		        [ :b | self class r2: b ].
		        [ :b | self class r3: b ].
		        [ :b | self class r3: b ].
		        [ :b | self class r3: b ].
		        [ :b | self class r3: b ].
		        [ :b | self class r3: b ].
		        [ :b | self class r3: b ].
		        [ :b | self class r3: b ].
		        [ :b | self class r3: b ].
		        [ :b | self class r3: b ].
		        [ :b | self class r4: b ].
		        [ :b | self class r4: b ].
		        [ :b | self class r4: b ].
		        [ :b | self class r4: b ].
		        [ :b | self class r4: b ].
		        [ :b | self class r4: b ].
		        [ :b | self class r4: b ].
		        [ :b | self class r4: b ].
		        [ :b | self class r4: b ].
		        [ :b | self class r5: b ].
		        [ :b | self class r5: b ].
		        [ :b | self class r5: b ].
		        [ :b | self class r5: b ].
		        [ :b | self class r5: b ].
		        [ :b | self class r5: b ].
		        [ :b | self class r5: b ].
		        [ :b | self class r5: b ].
		        [ :b | self class r5: b ].
		        [ :b | self class r6: b ].
		        [ :b | self class r6: b ].
		        [ :b | self class r6: b ].
		        [ :b | self class r6: b ].
		        [ :b | self class r6: b ].
		        [ :b | self class r6: b ].
		        [ :b | self class r6: b ].
		        [ :b | self class r6: b ].
		        [ :b | self class r6: b ].
		        [ :b | self class r7: b ].
		        [ :b | self class r7: b ].
		        [ :b | self class r7: b ].
		        [ :b | self class r7: b ].
		        [ :b | self class r7: b ].
		        [ :b | self class r7: b ].
		        [ :b | self class r7: b ].
		        [ :b | self class r7: b ].
		        [ :b | self class r7: b ].
		        [ :b | self class r8: b ].
		        [ :b | self class r8: b ].
		        [ :b | self class r8: b ].
		        [ :b | self class r8: b ].
		        [ :b | self class r8: b ].
		        [ :b | self class r8: b ].
		        [ :b | self class r8: b ].
		        [ :b | self class r8: b ].
		        [ :b | self class r8: b ].
		        [ :b | self class r9: b ].
		        [ :b | self class r9: b ].
		        [ :b | self class r9: b ].
		        [ :b | self class r9: b ].
		        [ :b | self class r9: b ].
		        [ :b | self class r9: b ].
		        [ :b | self class r9: b ].
		        [ :b | self class r9: b ].
		        [ :b | self class r9: b ] }.

	Cols := {
		        [ :b | self class c1: b ].
		        [ :b | self class c2: b ].
		        [ :b | self class c3: b ].
		        [ :b | self class c4: b ].
		        [ :b | self class c5: b ].
		        [ :b | self class c6: b ].
		        [ :b | self class c7: b ].
		        [ :b | self class c8: b ].
		        [ :b | self class c9: b ].
		        [ :b | self class c1: b ].
		        [ :b | self class c2: b ].
		        [ :b | self class c3: b ].
		        [ :b | self class c4: b ].
		        [ :b | self class c5: b ].
		        [ :b | self class c6: b ].
		        [ :b | self class c7: b ].
		        [ :b | self class c8: b ].
		        [ :b | self class c9: b ].
		        [ :b | self class c1: b ].
		        [ :b | self class c2: b ].
		        [ :b | self class c3: b ].
		        [ :b | self class c4: b ].
		        [ :b | self class c5: b ].
		        [ :b | self class c6: b ].
		        [ :b | self class c7: b ].
		        [ :b | self class c8: b ].
		        [ :b | self class c9: b ].
		        [ :b | self class c1: b ].
		        [ :b | self class c2: b ].
		        [ :b | self class c3: b ].
		        [ :b | self class c4: b ].
		        [ :b | self class c5: b ].
		        [ :b | self class c6: b ].
		        [ :b | self class c7: b ].
		        [ :b | self class c8: b ].
		        [ :b | self class c9: b ].
		        [ :b | self class c1: b ].
		        [ :b | self class c2: b ].
		        [ :b | self class c3: b ].
		        [ :b | self class c4: b ].
		        [ :b | self class c5: b ].
		        [ :b | self class c6: b ].
		        [ :b | self class c7: b ].
		        [ :b | self class c8: b ].
		        [ :b | self class c9: b ].
		        [ :b | self class c1: b ].
		        [ :b | self class c2: b ].
		        [ :b | self class c3: b ].
		        [ :b | self class c4: b ].
		        [ :b | self class c5: b ].
		        [ :b | self class c6: b ].
		        [ :b | self class c7: b ].
		        [ :b | self class c8: b ].
		        [ :b | self class c9: b ].
		        [ :b | self class c1: b ].
		        [ :b | self class c2: b ].
		        [ :b | self class c3: b ].
		        [ :b | self class c4: b ].
		        [ :b | self class c5: b ].
		        [ :b | self class c6: b ].
		        [ :b | self class c7: b ].
		        [ :b | self class c8: b ].
		        [ :b | self class c9: b ].
		        [ :b | self class c1: b ].
		        [ :b | self class c2: b ].
		        [ :b | self class c3: b ].
		        [ :b | self class c4: b ].
		        [ :b | self class c5: b ].
		        [ :b | self class c6: b ].
		        [ :b | self class c7: b ].
		        [ :b | self class c8: b ].
		        [ :b | self class c9: b ].
		        [ :b | self class c1: b ].
		        [ :b | self class c2: b ].
		        [ :b | self class c3: b ].
		        [ :b | self class c4: b ].
		        [ :b | self class c5: b ].
		        [ :b | self class c6: b ].
		        [ :b | self class c7: b ].
		        [ :b | self class c8: b ].
		        [ :b | self class c9: b ] }.

	Blocks := {
		          [ :b | self class b1: b ].
		          [ :b | self class b1: b ].
		          [ :b | self class b1: b ].
		          [ :b | self class b2: b ].
		          [ :b | self class b2: b ].
		          [ :b | self class b2: b ].
		          [ :b | self class b3: b ].
		          [ :b | self class b3: b ].
		          [ :b | self class b3: b ].
		          [ :b | self class b1: b ].
		          [ :b | self class b1: b ].
		          [ :b | self class b1: b ].
		          [ :b | self class b2: b ].
		          [ :b | self class b2: b ].
		          [ :b | self class b2: b ].
		          [ :b | self class b3: b ].
		          [ :b | self class b3: b ].
		          [ :b | self class b3: b ].
		          [ :b | self class b1: b ].
		          [ :b | self class b1: b ].
		          [ :b | self class b1: b ].
		          [ :b | self class b2: b ].
		          [ :b | self class b2: b ].
		          [ :b | self class b2: b ].
		          [ :b | self class b3: b ].
		          [ :b | self class b3: b ].
		          [ :b | self class b3: b ].
		          [ :b | self class b4: b ].
		          [ :b | self class b4: b ].
		          [ :b | self class b4: b ].
		          [ :b | self class b5: b ].
		          [ :b | self class b5: b ].
		          [ :b | self class b5: b ].
		          [ :b | self class b6: b ].
		          [ :b | self class b6: b ].
		          [ :b | self class b6: b ].
		          [ :b | self class b4: b ].
		          [ :b | self class b4: b ].
		          [ :b | self class b4: b ].
		          [ :b | self class b5: b ].
		          [ :b | self class b5: b ].
		          [ :b | self class b5: b ].
		          [ :b | self class b6: b ].
		          [ :b | self class b6: b ].
		          [ :b | self class b6: b ].
		          [ :b | self class b4: b ].
		          [ :b | self class b4: b ].
		          [ :b | self class b4: b ].
		          [ :b | self class b5: b ].
		          [ :b | self class b5: b ].
		          [ :b | self class b5: b ].
		          [ :b | self class b6: b ].
		          [ :b | self class b6: b ].
		          [ :b | self class b6: b ].
		          [ :b | self class b7: b ].
		          [ :b | self class b7: b ].
		          [ :b | self class b7: b ].
		          [ :b | self class b8: b ].
		          [ :b | self class b8: b ].
		          [ :b | self class b8: b ].
		          [ :b | self class b9: b ].
		          [ :b | self class b9: b ].
		          [ :b | self class b9: b ].
		          [ :b | self class b7: b ].
		          [ :b | self class b7: b ].
		          [ :b | self class b7: b ].
		          [ :b | self class b8: b ].
		          [ :b | self class b8: b ].
		          [ :b | self class b8: b ].
		          [ :b | self class b9: b ].
		          [ :b | self class b9: b ].
		          [ :b | self class b9: b ].
		          [ :b | self class b7: b ].
		          [ :b | self class b7: b ].
		          [ :b | self class b7: b ].
		          [ :b | self class b8: b ].
		          [ :b | self class b8: b ].
		          [ :b | self class b8: b ].
		          [ :b | self class b9: b ].
		          [ :b | self class b9: b ].
		          [ :b | self class b9: b ] }
]

{ #category : #'instance creation' }
Sudoku class >> isBoard: aBoard [

	^ aBoard size = 81 and: [ (0 to: 9) includesAll: aBoard ]
]

{ #category : #accessing }
Sudoku class >> r1: aBoard [

	^ aBoard atRows: #( 1 ) columns: #( 1 2 3 4 5 6 7 8 9 )
]

{ #category : #accessing }
Sudoku class >> r2: aBoard [

	^ aBoard atRows: #( 2 ) columns: #( 1 2 3 4 5 6 7 8 9 )
]

{ #category : #accessing }
Sudoku class >> r3: aBoard [

	^ aBoard atRows: #( 3 ) columns: #( 1 2 3 4 5 6 7 8 9 )
]

{ #category : #accessing }
Sudoku class >> r4: aBoard [

	^ aBoard atRows: #( 4 ) columns: #( 1 2 3 4 5 6 7 8 9 )
]

{ #category : #accessing }
Sudoku class >> r5: aBoard [

	^ aBoard atRows: #( 5 ) columns: #( 1 2 3 4 5 6 7 8 9 )
]

{ #category : #accessing }
Sudoku class >> r6: aBoard [

	^ aBoard atRows: #( 6 ) columns: #( 1 2 3 4 5 6 7 8 9 )
]

{ #category : #accessing }
Sudoku class >> r7: aBoard [

	^ aBoard atRows: #( 7 ) columns: #( 1 2 3 4 5 6 7 8 9 )
]

{ #category : #accessing }
Sudoku class >> r8: aBoard [

	^ aBoard atRows: #( 8 ) columns: #( 1 2 3 4 5 6 7 8 9 )
]

{ #category : #accessing }
Sudoku class >> r9: aBoard [

	^ aBoard atRows: #( 9 ) columns: #( 1 2 3 4 5 6 7 8 9 )
]

{ #category : #'instance creation' }
Sudoku class >> with: aBoard [

	| s |
	(self isBoard: aBoard)
		ifTrue: [
			s := self new boards: Queue new.
			s boards enqueue: aBoard copy.
			^ s ]
		ifFalse: [ self error: 'This is not a board! 😠' ]
]

{ #category : #private }
Sudoku >> boards [

	^ boards
]

{ #category : #private }
Sudoku >> boards: anObject [

	boards := anObject
]

{ #category : #private }
Sudoku >> findMostPromisingProspect: aBoard [
	"aBoard -> Tuple(empty position, Set(possible cell values at this empty position))"

	| m r c b tuples rcb vals |
	tuples := OrderedCollection new.
	m := Array2D rows: 9 columns: 9 contents: aBoard.
	1 to: 9 * 9 do: [ :i |
		(aBoard at: i) isZero ifTrue: [ "empty cell"
			r := ((Rows at: i) value: m) asSet. "cell values of row of position i"
			c := ((Cols at: i) value: m) asSet. "cell values of column of position i"
			b := ((Blocks at: i) value: m) asSet. "cell values of block of position i"
			rcb := (r union: c) union: b.
			vals := (1 to: 9) asSet difference: rcb. "possible values in position i"
			vals isNotEmpty ifTrue: [ tuples add: { i . vals } ] ] ].
	tuples sort: [ :t1 :t2 | t1 second size < t2 second size ]. "sort by least number of possible values"
	^ tuples
]

{ #category : #utilities }
Sudoku >> isSolved: aBoard [

	1 to: 9 * 9 do: [ :i | (aBoard at: i) isZero ifTrue: [ ^ false ] ].
	^ true
]

{ #category : #api }
Sudoku >> solve [

	| b b1 candidates bestCandidate pos cellValues |
	b := boards dequeue.
	(self isSolved: b)
		ifTrue: [ ^ b ]
		ifFalse: [
			candidates := self findMostPromisingProspect: b.
			candidates isNotEmpty ifTrue: [
				bestCandidate := candidates first.
				pos := bestCandidate first.
				cellValues := bestCandidate second.
				cellValues do: [ :n | "we generate more boards and put it in the boards queue"
					b1 := b copy.
					b1 at: pos put: n.
					boards enqueue: b1 ] ].
			^ self solve ]
]
