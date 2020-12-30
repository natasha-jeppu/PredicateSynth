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
			 27
			 37
			 567
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

(constraint (= (next 78 607 true ) 5))
(constraint (= (next 82 601 true ) 5))
(constraint (= (next 80 603 true ) 5))
(constraint (= (next 55 600 true ) 5))
(constraint (= (next 53 600 true ) 5))
(constraint (= (next 53 603 true ) 5))
(constraint (= (next 52 602 true ) 5))
(constraint (= (next 42 603 true ) 5))
(constraint (= (next 41 601 true ) 5))
(constraint (= (next 41 602 true ) 5))
(constraint (= (next 30 567 true ) 5))
(constraint (= (next 29 553 true ) 5))
(constraint (= (next 29 548 true ) 5))
(constraint (= (next 30 535 true ) 5))
(constraint (= (next 29 528 true ) 5))
(constraint (= (next 30 511 true ) 5))
(constraint (= (next 30 520 true ) 5))
(constraint (= (next 29 524 true ) 5))
(constraint (= (next 29 537 true ) 5))
(constraint (= (next 30 554 true ) 5))
(constraint (= (next 30 553 true ) 5))
(constraint (= (next 28 550 true ) 5))
(constraint (= (next 30 560 true ) 5))
(constraint (= (next 29 573 true ) 5))
(constraint (= (next 30 571 true ) 5))
(constraint (= (next 29 564 true ) 5))
(constraint (= (next 28 566 true ) 5))
(constraint (= (next 29 564 true ) 5))
(constraint (= (next 29 564 true ) 5))
(constraint (= (next 29 568 true ) 5))
(constraint (= (next 30 571 true ) 5))
(constraint (= (next 29 551 true ) 5))
(constraint (= (next 29 566 true ) 5))
(constraint (= (next 29 558 true ) 5))
(constraint (= (next 28 551 true ) 5))
(constraint (= (next 30 571 true ) 5))

(check-synth)
