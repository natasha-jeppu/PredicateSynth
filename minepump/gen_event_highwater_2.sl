(set-logic LIA)
(synth-fun next ((water Int) (methane Int) (pump Bool) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 1
			 2
			 15
			 17
			 37
			 594
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

(constraint (= (next 75 622 false ) 6))
(constraint (= (next 31 573 false ) 1))
(constraint (= (next 30 586 false ) 1))
(constraint (= (next 30 598 false ) 1))
(constraint (= (next 30 596 false ) 1))
(constraint (= (next 32 588 false ) 1))
(constraint (= (next 30 596 false ) 1))

(check-synth)
