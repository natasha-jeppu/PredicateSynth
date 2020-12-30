(set-logic LIA)
(synth-fun next ((water Int) (methane Int) (pump Bool) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 3
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 1
			 2
			 9
			 22
			 33
			 577
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

(constraint (= (next 76 585 false ) 3))
(constraint (= (next 30 576 false ) 3))
(constraint (= (next 31 581 false ) 3))
(constraint (= (next 31 589 false ) 3))
(constraint (= (next 30 597 false ) 6))
(constraint (= (next 33 597 false ) 3))
(constraint (= (next 34 597 false ) 6))
(constraint (= (next 33 598 false ) 6))
(constraint (= (next 33 599 false ) 6))
(constraint (= (next 30 594 false ) 3))
(constraint (= (next 31 585 false ) 3))
(constraint (= (next 31 590 false ) 3))
(constraint (= (next 30 588 false ) 3))
(constraint (= (next 31 587 false ) 3))
(constraint (= (next 31 577 false ) 3))
(constraint (= (next 31 574 false ) 3))
(constraint (= (next 30 589 false ) 3))
(constraint (= (next 31 582 false ) 3))
(constraint (= (next 31 580 false ) 3))
(constraint (= (next 31 564 false ) 3))
(constraint (= (next 31 576 false ) 3))
(constraint (= (next 31 566 false ) 3))
(constraint (= (next 32 566 false ) 3))
(constraint (= (next 31 536 false ) 3))
(constraint (= (next 31 526 false ) 3))

(check-synth)
