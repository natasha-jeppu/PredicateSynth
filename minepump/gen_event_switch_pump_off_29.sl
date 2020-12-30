(set-logic LIA)
(synth-fun next ((water Int) (methane Int) (pump Bool) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 5
				 (ite StartBool Start Start)))

	(Var Int (
			 1
			 2
			 15
			 16
			 35
			 565
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

(constraint (= (next 70 601 true ) 5))
(constraint (= (next 71 603 true ) 5))
(constraint (= (next 29 551 true ) 5))
(constraint (= (next 29 551 true ) 5))
(constraint (= (next 29 562 true ) 5))
(constraint (= (next 29 562 true ) 5))
(constraint (= (next 30 571 true ) 5))
(constraint (= (next 29 566 true ) 5))
(constraint (= (next 29 554 true ) 5))
(constraint (= (next 30 564 true ) 5))
(constraint (= (next 29 565 true ) 5))
(constraint (= (next 29 560 true ) 5))
(constraint (= (next 29 548 true ) 5))
(constraint (= (next 29 553 true ) 5))
(constraint (= (next 29 565 true ) 5))

(check-synth)
