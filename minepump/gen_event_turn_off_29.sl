(set-logic LIA)
(synth-fun next ((water Int) (methane Int) (pump Bool) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 0
				 7
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

(constraint (= (next 70 601 true ) 7))
(constraint (= (next 71 603 true ) 7))
(constraint (= (next 29 551 true ) 0))
(constraint (= (next 29 551 true ) 0))
(constraint (= (next 29 562 true ) 0))
(constraint (= (next 29 562 true ) 0))
(constraint (= (next 30 571 true ) 0))
(constraint (= (next 29 566 true ) 0))
(constraint (= (next 29 554 true ) 0))
(constraint (= (next 30 564 true ) 0))
(constraint (= (next 29 565 true ) 0))
(constraint (= (next 29 560 true ) 0))
(constraint (= (next 29 548 true ) 0))
(constraint (= (next 29 553 true ) 0))

(check-synth)
