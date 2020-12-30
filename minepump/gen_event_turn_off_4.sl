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
			 17
			 34
			 38
			 562
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

(constraint (= (next 82 602 true ) 7))
(constraint (= (next 78 601 true ) 7))
(constraint (= (next 78 606 true ) 7))
(constraint (= (next 76 605 true ) 6))
(constraint (= (next 57 602 true ) 7))
(constraint (= (next 56 600 true ) 7))
(constraint (= (next 55 604 true ) 7))
(constraint (= (next 56 608 true ) 6))
(constraint (= (next 29 581 true ) 0))
(constraint (= (next 30 581 true ) 0))
(constraint (= (next 30 576 true ) 0))
(constraint (= (next 29 578 true ) 0))
(constraint (= (next 29 589 true ) 0))
(constraint (= (next 29 577 true ) 0))
(constraint (= (next 30 580 true ) 0))
(constraint (= (next 30 566 true ) 0))
(constraint (= (next 29 580 true ) 0))
(constraint (= (next 30 564 true ) 0))
(constraint (= (next 29 554 true ) 0))
(constraint (= (next 30 557 true ) 0))
(constraint (= (next 29 560 true ) 0))
(constraint (= (next 29 556 true ) 0))
(constraint (= (next 29 554 true ) 0))
(constraint (= (next 30 552 true ) 0))
(constraint (= (next 29 549 true ) 0))
(constraint (= (next 30 528 true ) 0))
(constraint (= (next 29 546 true ) 0))
(constraint (= (next 29 532 true ) 0))
(constraint (= (next 29 507 true ) 0))
(constraint (= (next 28 507 true ) 0))
(constraint (= (next 30 511 true ) 0))
(constraint (= (next 30 511 true ) 0))
(constraint (= (next 30 501 true ) 0))

(check-synth)
