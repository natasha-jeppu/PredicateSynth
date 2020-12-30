(set-logic LIA)
(synth-fun next ((water Int) (methane Int) (pump Bool) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 (ite StartBool Start Start)))

	(Var Int (
			 1
			 2
			 5
			 36
			 597
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

(constraint (= (next 48 597 false ) 1))
(constraint (= (next 48 597 false ) 1))
(constraint (= (next 40 598 false ) 1))
(constraint (= (next 37 596 false ) 1))
(constraint (= (next 36 599 false ) 1))
(constraint (= (next 37 596 false ) 1))
(constraint (= (next 38 599 false ) 1))
(constraint (= (next 38 597 false ) 1))
(constraint (= (next 37 596 false ) 1))
(constraint (= (next 37 591 false ) 1))
(constraint (= (next 31 600 false ) 1))
(constraint (= (next 31 594 false ) 1))
(constraint (= (next 31 598 false ) 1))
(constraint (= (next 33 596 false ) 1))
(constraint (= (next 32 597 false ) 1))
(constraint (= (next 32 599 false ) 1))
(constraint (= (next 31 599 false ) 1))

(check-synth)
