generated
scan1
	self step.
	currentCharacter ~~ $"
		ifTrue: [ ^ self scan2 ].
	^ self reportLastMatch