generated-reduction actions
reduceActionFordeclaration_specifier1: nodes
	| result |
	result := Array new: 9.
	result at: 1 put: (nodes at: 1).
	^ result