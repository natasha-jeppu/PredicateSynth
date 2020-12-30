(set-logic LIA)
(synth-fun next ((water Int) (methane Int) (pump Bool) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 2
				 (ite StartBool Start Start)))

	(Var Int (
			 1
			 2
			 24
			 30
			 574
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

(constraint (= (next 30 592 true ) 2))
(constraint (= (next 29 589 true ) 2))
(constraint (= (next 30 598 true ) 2))
(constraint (= (next 29 593 true ) 2))
(constraint (= (next 30 586 true ) 2))
(constraint (= (next 30 581 true ) 2))
(constraint (= (next 29 574 true ) 2))
(constraint (= (next 30 559 true ) 2))
(constraint (= (next 29 535 true ) 2))
(constraint (= (next 29 533 true ) 2))

(check-synth)
