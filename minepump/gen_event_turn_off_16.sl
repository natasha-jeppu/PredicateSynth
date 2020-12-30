(set-logic LIA)
(synth-fun next ((water Int) (methane Int) (pump Bool) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 0
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 1
			 2
			 12
			 33
			 38
			 546
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

(constraint (= (next 71 602 true ) 6))
(constraint (= (next 70 602 true ) 7))
(constraint (= (next 68 602 true ) 6))
(constraint (= (next 30 499 true ) 0))
(constraint (= (next 29 490 true ) 0))
(constraint (= (next 29 478 true ) 0))
(constraint (= (next 29 481 true ) 0))
(constraint (= (next 30 490 true ) 0))
(constraint (= (next 30 484 true ) 0))
(constraint (= (next 29 498 true ) 0))
(constraint (= (next 30 509 true ) 0))
(constraint (= (next 29 507 true ) 0))
(constraint (= (next 29 540 true ) 0))
(constraint (= (next 29 539 true ) 0))
(constraint (= (next 28 560 true ) 0))
(constraint (= (next 29 560 true ) 0))
(constraint (= (next 30 547 true ) 0))
(constraint (= (next 29 571 true ) 0))
(constraint (= (next 29 576 true ) 0))
(constraint (= (next 29 576 true ) 0))
(constraint (= (next 30 581 true ) 0))
(constraint (= (next 29 579 true ) 0))
(constraint (= (next 30 566 true ) 0))
(constraint (= (next 30 565 true ) 0))
(constraint (= (next 28 564 true ) 0))
(constraint (= (next 30 566 true ) 0))
(constraint (= (next 29 578 true ) 0))
(constraint (= (next 30 556 true ) 0))
(constraint (= (next 30 542 true ) 0))
(constraint (= (next 29 559 true ) 0))

(check-synth)
