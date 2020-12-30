(set-logic LIA)
(synth-fun next ((water Int) (methane Int) (pump Bool) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 0
				 2
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 1
			 2
			 14
			 35
			 602
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

(constraint (= (next 74 600 false ) 7))
(constraint (= (next 29 603 true ) 2))
(constraint (= (next 31 602 false ) 6))
(constraint (= (next 31 600 false ) 7))
(constraint (= (next 31 604 false ) 0))
(constraint (= (next 32 603 false ) 6))
(constraint (= (next 33 602 false ) 7))
(constraint (= (next 31 604 true ) 2))
(constraint (= (next 31 603 true ) 2))
(constraint (= (next 30 604 true ) 2))

(check-synth)
