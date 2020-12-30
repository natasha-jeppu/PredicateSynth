(set-logic LIA)
(synth-fun next ((water Int) (methane Int) (pump Bool) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 0
				 (ite StartBool Start Start)))

	(Var Int (
			 1
			 2
			 18
			 30
			 533
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

(constraint (= (next 29 542 true ) 0))
(constraint (= (next 30 544 true ) 0))
(constraint (= (next 29 550 true ) 0))
(constraint (= (next 30 532 true ) 0))
(constraint (= (next 29 551 true ) 0))
(constraint (= (next 30 545 true ) 0))
(constraint (= (next 30 541 true ) 0))
(constraint (= (next 30 537 true ) 0))
(constraint (= (next 29 517 true ) 0))
(constraint (= (next 29 507 true ) 0))
(constraint (= (next 30 497 true ) 0))

(check-synth)
