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
			 5
			 69
			 606
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

(constraint (= (next 74 614 false ) 0))
(constraint (= (next 75 607 false ) 7))
(constraint (= (next 71 603 true ) 2))
(constraint (= (next 69 602 true ) 2))
(constraint (= (next 63 609 true ) 2))
(constraint (= (next 63 602 false ) 6))
(constraint (= (next 65 602 false ) 7))

(check-synth)
