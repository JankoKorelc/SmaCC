generated-reduction actions
reduceActionForLiteral2: nodes
	| result |
	result := JSBooleanLiteralNode new.
	result value: (nodes at: 1).
	^ result