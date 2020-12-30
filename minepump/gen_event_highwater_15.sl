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
			 14
			 17
			 37
			 584
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

(constraint (= (next 74 557 false ) 1))
(constraint (= (next 30 582 false ) 1))
(constraint (= (next 30 579 false ) 1))
(constraint (= (next 30 586 false ) 1))
(constraint (= (next 31 591 false ) 1))
(constraint (= (next 30 589 false ) 1))
(constraint (= (next 31 604 false ) 6))

(check-synth)
