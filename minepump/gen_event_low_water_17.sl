(set-logic LIA)
(synth-fun next ((water Int) (methane Int) (pump Bool) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 2
				 (ite StartBool Start Start)))

	(Var Int (
			 1
			 2
			 17
			 29
			 553
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

(constraint (= (next 30 567 true ) 2))
(constraint (= (next 29 553 true ) 2))
(constraint (= (next 29 548 true ) 2))
(constraint (= (next 30 535 true ) 2))
(constraint (= (next 29 528 true ) 2))
(constraint (= (next 30 511 true ) 2))
(constraint (= (next 30 520 true ) 2))
(constraint (= (next 29 524 true ) 2))
(constraint (= (next 29 537 true ) 2))
(constraint (= (next 30 554 true ) 2))
(constraint (= (next 30 553 true ) 2))
(constraint (= (next 28 550 true ) 2))
(constraint (= (next 30 560 true ) 2))
(constraint (= (next 29 573 true ) 2))
(constraint (= (next 30 571 true ) 2))
(constraint (= (next 29 564 true ) 2))
(constraint (= (next 28 566 true ) 2))
(constraint (= (next 29 564 true ) 2))
(constraint (= (next 29 564 true ) 2))
(constraint (= (next 29 568 true ) 2))
(constraint (= (next 30 571 true ) 2))
(constraint (= (next 29 551 true ) 2))
(constraint (= (next 29 566 true ) 2))
(constraint (= (next 29 558 true ) 2))
(constraint (= (next 28 551 true ) 2))
(constraint (= (next 30 571 true ) 2))

(check-synth)
