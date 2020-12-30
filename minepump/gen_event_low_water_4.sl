(set-logic LIA)
(synth-fun next ((water Int) (methane Int) (pump Bool) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 2
				 (ite StartBool Start Start)))

	(Var Int (
			 1
			 2
			 29
			 550
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

(constraint (= (next 29 581 true ) 2))
(constraint (= (next 30 581 true ) 2))
(constraint (= (next 30 576 true ) 2))
(constraint (= (next 29 578 true ) 2))
(constraint (= (next 29 589 true ) 2))
(constraint (= (next 29 577 true ) 2))
(constraint (= (next 30 580 true ) 2))
(constraint (= (next 30 566 true ) 2))
(constraint (= (next 29 580 true ) 2))
(constraint (= (next 30 564 true ) 2))
(constraint (= (next 29 554 true ) 2))
(constraint (= (next 30 557 true ) 2))
(constraint (= (next 29 560 true ) 2))
(constraint (= (next 29 556 true ) 2))
(constraint (= (next 29 554 true ) 2))
(constraint (= (next 30 552 true ) 2))
(constraint (= (next 29 549 true ) 2))
(constraint (= (next 30 528 true ) 2))
(constraint (= (next 29 546 true ) 2))
(constraint (= (next 29 532 true ) 2))
(constraint (= (next 29 507 true ) 2))
(constraint (= (next 28 507 true ) 2))
(constraint (= (next 30 511 true ) 2))
(constraint (= (next 30 511 true ) 2))
(constraint (= (next 30 501 true ) 2))
(constraint (= (next 29 498 true ) 2))

(check-synth)
