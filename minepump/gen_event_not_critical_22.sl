(set-logic LIA)
(synth-fun next ((water Int) (methane Int) (pump Bool) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 (ite StartBool Start Start)))

	(Var Int (
			 1
			 2
			 3
			 19
			 53
			 596
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

(constraint (= (next 82 594 false ) 1))
(constraint (= (next 78 599 false ) 1))
(constraint (= (next 76 598 false ) 1))
(constraint (= (next 76 595 false ) 1))
(constraint (= (next 56 598 false ) 1))
(constraint (= (next 53 597 false ) 1))
(constraint (= (next 52 596 false ) 1))
(constraint (= (next 53 594 false ) 1))
(constraint (= (next 54 591 false ) 1))
(constraint (= (next 32 594 false ) 1))
(constraint (= (next 32 598 false ) 1))
(constraint (= (next 32 600 false ) 1))
(constraint (= (next 32 595 false ) 1))
(constraint (= (next 34 590 false ) 1))

(check-synth)
