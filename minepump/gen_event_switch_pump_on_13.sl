(set-logic LIA)
(synth-fun next ((water Int) (methane Int) (pump Bool) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 4
				 (ite StartBool Start Start)))

	(Var Int (
			 1
			 2
			 15
			 24
			 37
			 543
			 water
			 methane
			 (+ Var Var)						
			 (- Var Var)						
			 (* Var Var)))

	(StartBool Bool (
				 	 pump
					(= Var Var)						
					(>= Var Var)						
					(<= Var Var)						
					(and StartBool StartBool)			
					(or  StartBool StartBool)				
					(not StartBool)))))

(constraint (= (next 74 587 false ) 4))
(constraint (= (next 70 597 false ) 4))
(constraint (= (next 71 596 false ) 4))
(constraint (= (next 31 542 false ) 4))
(constraint (= (next 30 540 false ) 4))
(constraint (= (next 30 545 false ) 4))
(constraint (= (next 31 551 false ) 4))
(constraint (= (next 31 538 false ) 4))
(constraint (= (next 30 538 false ) 4))
(constraint (= (next 30 519 false ) 4))
(constraint (= (next 30 528 false ) 4))
(constraint (= (next 30 520 false ) 4))
(constraint (= (next 31 535 false ) 4))
(constraint (= (next 32 535 false ) 4))
(constraint (= (next 30 529 false ) 4))
(constraint (= (next 30 544 false ) 4))
(constraint (= (next 31 531 false ) 4))
(constraint (= (next 31 533 false ) 4))
(constraint (= (next 30 511 false ) 4))

(check-synth)