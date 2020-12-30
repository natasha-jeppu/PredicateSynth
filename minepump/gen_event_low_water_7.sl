(set-logic LIA)
(synth-fun next ((water Int) (methane Int) (pump Bool) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 2
				 (ite StartBool Start Start)))

	(Var Int (
			 1
			 2
			 16
			 29
			 549
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

(constraint (= (next 30 563 true ) 2))
(constraint (= (next 30 559 true ) 2))
(constraint (= (next 29 571 true ) 2))
(constraint (= (next 28 561 true ) 2))
(constraint (= (next 30 547 true ) 2))
(constraint (= (next 28 557 true ) 2))
(constraint (= (next 29 563 true ) 2))
(constraint (= (next 29 556 true ) 2))
(constraint (= (next 29 569 true ) 2))
(constraint (= (next 29 582 true ) 2))
(constraint (= (next 29 572 true ) 2))
(constraint (= (next 28 568 true ) 2))
(constraint (= (next 30 561 true ) 2))
(constraint (= (next 30 566 true ) 2))
(constraint (= (next 29 550 true ) 2))
(constraint (= (next 30 537 true ) 2))
(constraint (= (next 29 540 true ) 2))
(constraint (= (next 30 528 true ) 2))
(constraint (= (next 29 524 true ) 2))
(constraint (= (next 29 528 true ) 2))
(constraint (= (next 30 537 true ) 2))
(constraint (= (next 29 539 true ) 2))
(constraint (= (next 30 535 true ) 2))
(constraint (= (next 30 533 true ) 2))
(constraint (= (next 30 529 true ) 2))
(constraint (= (next 29 529 true ) 2))
(constraint (= (next 30 537 true ) 2))
(constraint (= (next 29 525 true ) 2))
(constraint (= (next 29 542 true ) 2))
(constraint (= (next 29 549 true ) 2))
(constraint (= (next 29 553 true ) 2))
(constraint (= (next 29 558 true ) 2))

(check-synth)
