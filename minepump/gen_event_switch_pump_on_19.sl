(set-logic LIA)
(synth-fun next ((water Int) (methane Int) (pump Bool) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 4
				 (ite StartBool Start Start)))

	(Var Int (
			 1
			 2
			 12
			 30
			 34
			 515
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

(constraint (= (next 74 595 false ) 4))
(constraint (= (next 75 593 false ) 4))
(constraint (= (next 30 509 false ) 4))
(constraint (= (next 31 499 false ) 4))
(constraint (= (next 31 511 false ) 4))
(constraint (= (next 30 494 false ) 4))
(constraint (= (next 31 503 false ) 4))
(constraint (= (next 30 501 false ) 4))
(constraint (= (next 30 496 false ) 4))
(constraint (= (next 30 496 false ) 4))
(constraint (= (next 30 496 false ) 4))
(constraint (= (next 30 482 false ) 4))
(constraint (= (next 30 488 false ) 4))
(constraint (= (next 31 492 false ) 4))
(constraint (= (next 31 478 false ) 4))
(constraint (= (next 31 501 false ) 4))
(constraint (= (next 31 494 false ) 4))
(constraint (= (next 30 505 false ) 4))
(constraint (= (next 32 506 false ) 4))
(constraint (= (next 31 523 false ) 4))
(constraint (= (next 32 534 false ) 4))
(constraint (= (next 30 545 false ) 4))
(constraint (= (next 30 552 false ) 4))
(constraint (= (next 31 548 false ) 4))
(constraint (= (next 30 523 false ) 4))
(constraint (= (next 31 526 false ) 4))

(check-synth)
