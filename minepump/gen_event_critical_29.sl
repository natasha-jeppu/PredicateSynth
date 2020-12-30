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
			 4
			 9
			 75
			 609
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

(constraint (= (next 74 622 false ) 0))
(constraint (= (next 77 618 false ) 6))
(constraint (= (next 79 608 false ) 6))
(constraint (= (next 80 603 false ) 7))
(constraint (= (next 70 601 true ) 2))
(constraint (= (next 71 603 true ) 2))

(check-synth)
