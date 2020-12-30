(set-logic LIA)
(synth-fun next ((water Int) (methane Int) (pump Bool) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 5
				 (ite StartBool Start Start)))

	(Var Int (
			 1
			 2
			 26
			 27
			 61
			 586
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

(constraint (= (next 84 607 true ) 5))
(constraint (= (next 84 603 true ) 5))
(constraint (= (next 80 602 true ) 5))
(constraint (= (next 81 604 true ) 5))
(constraint (= (next 73 603 true ) 5))
(constraint (= (next 29 544 true ) 5))
(constraint (= (next 29 571 true ) 5))
(constraint (= (next 30 551 true ) 5))

(check-synth)
