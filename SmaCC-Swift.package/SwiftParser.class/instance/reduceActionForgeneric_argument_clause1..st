generated-reduction actions
reduceActionForgeneric_argument_clause1: nodes
	| result |
	result := Array new: 3.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self addAll: ((nodes at: 2) at: 1) to: (result at: 2).
	result at: 3 put: (nodes at: 3).
	^ result