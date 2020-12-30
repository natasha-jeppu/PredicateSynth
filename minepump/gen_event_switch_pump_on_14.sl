(set-logic LIA)
(synth-fun next ((water Int) (methane Int) (pump Bool) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 4
				 (ite StartBool Start Start)))

	(Var Int (
			 1
			 2
			 3
			 17
			 56
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

(constraint (= (next 80 596 false ) 4))
(constraint (= (next 72 593 false ) 4))
(constraint (= (next 64 592 false ) 4))
(constraint (= (next 52 599 false ) 4))
(constraint (= (next 52 600 false ) 4))
(constraint (= (next 35 599 false ) 4))
(constraint (= (next 35 595 false ) 4))

(check-synth)
