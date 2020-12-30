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
			 10
			 76
			 610
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

(constraint (= (next 74 630 false ) 0))
(constraint (= (next 75 618 false ) 6))
(constraint (= (next 76 609 false ) 6))
(constraint (= (next 77 601 false ) 7))
(constraint (= (next 75 607 true ) 2))
(constraint (= (next 76 606 false ) 6))
(constraint (= (next 76 601 false ) 7))

(check-synth)
