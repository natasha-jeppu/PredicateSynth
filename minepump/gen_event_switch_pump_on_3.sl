(set-logic LIA)
(synth-fun next ((water Int) (methane Int) (pump Bool) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 4
				 (ite StartBool Start Start)))

	(Var Int (
			 1
			 2
			 8
			 22
			 32
			 486
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

(constraint (= (next 74 563 false ) 4))
(constraint (= (next 31 517 false ) 4))
(constraint (= (next 30 514 false ) 4))
(constraint (= (next 32 518 false ) 4))
(constraint (= (next 30 502 false ) 4))
(constraint (= (next 31 503 false ) 4))
(constraint (= (next 31 492 false ) 4))
(constraint (= (next 32 484 false ) 4))
(constraint (= (next 31 484 false ) 4))
(constraint (= (next 31 486 false ) 4))
(constraint (= (next 31 481 false ) 4))
(constraint (= (next 32 489 false ) 4))
(constraint (= (next 30 482 false ) 4))
(constraint (= (next 31 459 false ) 4))
(constraint (= (next 31 458 false ) 4))
(constraint (= (next 30 455 false ) 4))
(constraint (= (next 32 469 false ) 4))
(constraint (= (next 31 478 false ) 4))
(constraint (= (next 30 475 false ) 4))
(constraint (= (next 30 477 false ) 4))
(constraint (= (next 31 474 false ) 4))
(constraint (= (next 31 476 false ) 4))
(constraint (= (next 30 479 false ) 4))
(constraint (= (next 31 482 false ) 4))
(constraint (= (next 30 476 false ) 4))
(constraint (= (next 30 479 false ) 4))
(constraint (= (next 30 481 false ) 4))
(constraint (= (next 30 478 false ) 4))

(check-synth)
