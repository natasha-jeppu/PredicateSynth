(set-logic LIA)
(synth-fun next ((water Int) (methane Int) (pump Bool) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 (ite StartBool Start Start)))

	(Var Int (
			 1
			 2
			 8
			 32
			 35
			 541
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

(constraint (= (next 75 596 false ) 1))
(constraint (= (next 31 499 false ) 1))
(constraint (= (next 31 470 false ) 1))
(constraint (= (next 30 488 false ) 1))
(constraint (= (next 31 487 false ) 1))
(constraint (= (next 31 487 false ) 1))
(constraint (= (next 31 490 false ) 1))
(constraint (= (next 31 503 false ) 1))
(constraint (= (next 31 501 false ) 1))
(constraint (= (next 31 528 false ) 1))
(constraint (= (next 31 546 false ) 1))
(constraint (= (next 30 546 false ) 1))
(constraint (= (next 30 559 false ) 1))
(constraint (= (next 31 556 false ) 1))
(constraint (= (next 31 554 false ) 1))
(constraint (= (next 30 568 false ) 1))
(constraint (= (next 30 570 false ) 1))
(constraint (= (next 30 576 false ) 1))
(constraint (= (next 30 582 false ) 1))
(constraint (= (next 30 572 false ) 1))
(constraint (= (next 31 557 false ) 1))
(constraint (= (next 31 557 false ) 1))
(constraint (= (next 30 560 false ) 1))
(constraint (= (next 31 576 false ) 1))
(constraint (= (next 30 565 false ) 1))
(constraint (= (next 31 541 false ) 1))
(constraint (= (next 31 548 false ) 1))
(constraint (= (next 30 568 false ) 1))

(check-synth)
