(set-logic LIA)
(synth-fun next ((water Int) (methane Int) (pump Bool) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 5
				 (ite StartBool Start Start)))

	(Var Int (
			 1
			 2
			 8
			 19
			 31
			 551
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

(constraint (= (next 75 607 true ) 5))
(constraint (= (next 30 563 true ) 5))
(constraint (= (next 30 559 true ) 5))
(constraint (= (next 29 571 true ) 5))
(constraint (= (next 28 561 true ) 5))
(constraint (= (next 30 547 true ) 5))
(constraint (= (next 28 557 true ) 5))
(constraint (= (next 29 563 true ) 5))
(constraint (= (next 29 556 true ) 5))
(constraint (= (next 29 569 true ) 5))
(constraint (= (next 29 582 true ) 5))
(constraint (= (next 29 572 true ) 5))
(constraint (= (next 28 568 true ) 5))
(constraint (= (next 30 561 true ) 5))
(constraint (= (next 30 566 true ) 5))
(constraint (= (next 29 550 true ) 5))
(constraint (= (next 30 537 true ) 5))
(constraint (= (next 29 540 true ) 5))
(constraint (= (next 30 528 true ) 5))
(constraint (= (next 29 524 true ) 5))
(constraint (= (next 29 528 true ) 5))
(constraint (= (next 30 537 true ) 5))
(constraint (= (next 29 539 true ) 5))
(constraint (= (next 30 535 true ) 5))
(constraint (= (next 30 533 true ) 5))
(constraint (= (next 30 529 true ) 5))
(constraint (= (next 29 529 true ) 5))
(constraint (= (next 30 537 true ) 5))
(constraint (= (next 29 525 true ) 5))
(constraint (= (next 29 542 true ) 5))
(constraint (= (next 29 549 true ) 5))
(constraint (= (next 29 553 true ) 5))
(constraint (= (next 29 558 true ) 5))

(check-synth)
