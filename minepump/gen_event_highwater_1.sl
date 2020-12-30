(set-logic LIA)
(synth-fun next ((water Int) (methane Int) (pump Bool) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 (ite StartBool Start Start)))

	(Var Int (
			 1
			 2
			 8
			 17
			 32
			 564
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

(constraint (= (next 75 591 false ) 1))
(constraint (= (next 31 588 false ) 1))
(constraint (= (next 33 587 false ) 1))
(constraint (= (next 30 582 false ) 1))
(constraint (= (next 31 572 false ) 1))
(constraint (= (next 31 577 false ) 1))
(constraint (= (next 30 581 false ) 1))
(constraint (= (next 32 591 false ) 1))
(constraint (= (next 31 581 false ) 1))
(constraint (= (next 30 578 false ) 1))
(constraint (= (next 31 568 false ) 1))
(constraint (= (next 30 556 false ) 1))
(constraint (= (next 30 557 false ) 1))
(constraint (= (next 31 544 false ) 1))
(constraint (= (next 30 536 false ) 1))
(constraint (= (next 31 535 false ) 1))
(constraint (= (next 32 542 false ) 1))
(constraint (= (next 31 538 false ) 1))
(constraint (= (next 32 539 false ) 1))
(constraint (= (next 30 557 false ) 1))
(constraint (= (next 31 561 false ) 1))
(constraint (= (next 31 565 false ) 1))
(constraint (= (next 30 568 false ) 1))
(constraint (= (next 30 566 false ) 1))
(constraint (= (next 31 564 false ) 1))
(constraint (= (next 31 557 false ) 1))
(constraint (= (next 31 552 false ) 1))
(constraint (= (next 31 552 false ) 1))

(check-synth)
