generated
scan11
	self step.
	currentCharacter = $:
		ifTrue: [ ^ self recordAndReportMatch: #(169) ].
	currentCharacter isDigit
		ifTrue: [ 
			[ 
			self recordMatch: #(161).
			self step.
			currentCharacter = $.
				ifTrue: [ ^ self scan12 ].
			currentCharacter = $:
				ifTrue: [ ^ self recordAndReportMatch: #(169) ].
			currentCharacter isDigit ] whileTrue ].
	(currentCharacter isSafeForHTTP or: [ currentCharacter = $$ ])
		ifTrue: [ ^ self scan3 ].
	^ self reportLastMatch