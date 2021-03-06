actions
findParserClass
	| className class text |
	self scannerClassString isEmpty
		ifTrue: [ ^ UIManager default inform: 'Undefined scanner class' ].
	className := self
		choose: 'What class do you want to use?'
		from:
			((SmaCCParser allSubclasses collect: [ :c | c name ])
				reject: [ :c | c = 'SmaCCGLRParser' ]) asSortedCollection.
	className notNil
		ifTrue: [ parserClassMorph hResizing: #rigid.
			parserClassMorph
				newContents: '';
				newContents: className.
			parserClassMorph changed: #updateWindowLabel.
			class := Smalltalk at: className asSymbol ifAbsent: [ ^ self ].
			self setPackage: class package name.
			(class class includesSelector: #definitionComment)
				ifTrue: [ text := self getCommentsFrom: class class >> #definitionComment.
					self definition: text ]
				ifFalse: [ (class class includesSelector: #parserDefinitionComment)
						ifTrue: [ | scannerText	"Old style, force conversion." parserText |
							(self scannerClass class
								includesSelector: #scannerDefinitionComment)
								ifTrue: [ scannerText := self
										getCommentsFrom: self scannerClass class >> #scannerDefinitionComment ]
								ifFalse: [ scannerText := '' ].
							parserText := self
								getCommentsFrom: class class >> #parserDefinitionComment.
							self
								definition:
									'#Definition extracted from old style definition comments
' , scannerText
										,
											'
' , parserText ] ] ]