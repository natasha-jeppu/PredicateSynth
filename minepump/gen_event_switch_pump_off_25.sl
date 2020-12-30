(set-logic LIA)
(synth-fun next ((water Int) (methane Int) (pump Bool) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 5
				 (ite StartBool Start Start)))

	(Var Int (
			 1
			 2
			 9
			 13
			 41
			 593
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

(constraint (= (next 48 601 true ) 5))
(constraint (= (next 49 601 true ) 5))
(constraint (= (next 47 603 true ) 5))
(constraint (= (next 49 604 true ) 5))
(constraint (= (next 43 602 true ) 5))
(constraint (= (next 30 580 true ) 5))
(constraint (= (next 29 579 true ) 5))
(constraint (= (next 30 572 true ) 5))

(check-synth)
