generated
scanForTokenX4
	[ self recordMatch: #(28).
	self step.
	currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ]
		whileTrue