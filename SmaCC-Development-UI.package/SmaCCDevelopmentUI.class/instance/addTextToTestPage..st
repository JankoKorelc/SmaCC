initialize-release
addTextToTestPage: aTestPage
	| aTestText |
	testCodeHolder := SmaCCCodeHolder owner: self ownerAcceptSelector: #acceptTestCode:notifying:.
	aTestText := testCodeHolder contentsMorph.
	aTestText
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		color: Color transparent.
	aTestPage
		addMorph: aTestText
		fullFrame: (LayoutFrame fractions: (0 @ 0 corner: 1 @ 1) offsets: (0 @ 0 corner: 0 @ -25))