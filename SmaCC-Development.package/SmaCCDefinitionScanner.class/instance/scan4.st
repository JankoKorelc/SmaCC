generated
scan4
	[ self step.
	currentCharacter == $'
		ifTrue: [ ^ self recordAndReportMatch: #(32) ].
	currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ]
		whileTrue.
	^ self reportLastMatch