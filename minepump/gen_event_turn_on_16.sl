(set-logic LIA)
(synth-fun next ((water Int) (methane Int) (pump Bool) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 3
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 1
			 2
			 14
			 36
			 37
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

(constraint (= (next 75 596 false ) 6))
(constraint (= (next 72 596 false ) 6))
(constraint (= (next 72 592 false ) 6))
(constraint (= (next 71 599 false ) 3))
(constraint (= (next 31 499 false ) 3))
(constraint (= (next 31 470 false ) 3))
(constraint (= (next 30 488 false ) 3))
(constraint (= (next 31 487 false ) 3))
(constraint (= (next 31 487 false ) 3))
(constraint (= (next 31 490 false ) 3))
(constraint (= (next 31 503 false ) 3))
(constraint (= (next 31 501 false ) 3))
(constraint (= (next 31 528 false ) 3))
(constraint (= (next 31 546 false ) 3))
(constraint (= (next 30 546 false ) 3))
(constraint (= (next 30 559 false ) 3))
(constraint (= (next 31 556 false ) 3))
(constraint (= (next 31 554 false ) 3))
(constraint (= (next 30 568 false ) 3))
(constraint (= (next 30 570 false ) 3))
(constraint (= (next 30 576 false ) 3))
(constraint (= (next 30 582 false ) 3))
(constraint (= (next 30 572 false ) 3))
(constraint (= (next 31 557 false ) 3))
(constraint (= (next 31 557 false ) 3))
(constraint (= (next 30 560 false ) 3))
(constraint (= (next 31 576 false ) 3))
(constraint (= (next 30 565 false ) 3))
(constraint (= (next 31 541 false ) 3))
(constraint (= (next 31 548 false ) 3))
(constraint (= (next 30 568 false ) 3))

(check-synth)
