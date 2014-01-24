*smacc-rewrite-engine
splitFirstOn: firstCharacter andThen: secondCharacter do: aBlock
	(self subStrings: firstCharacter)
		do:
			[:each | 
			| index |
			index := each indexOf: secondCharacter.
			index ~= 0 ifTrue: [aBlock value: (each copyFrom: 1 to: index - 1) value: (each copyFrom: index + 1 to: each size)]]