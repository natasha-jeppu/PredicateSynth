(set-logic LIA)
(synth-fun next ((water Int) (methane Int) (pump Bool) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 3
				 (ite StartBool Start Start)))

	(Var Int (
			 1
			 2
			 9
			 21
			 32
			 497
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

(constraint (= (next 75 567 false ) 3))
(constraint (= (next 30 488 false ) 3))
(constraint (= (next 31 482 false ) 3))
(constraint (= (next 30 480 false ) 3))
(constraint (= (next 31 472 false ) 3))
(constraint (= (next 32 478 false ) 3))
(constraint (= (next 31 501 false ) 3))
(constraint (= (next 30 519 false ) 3))
(constraint (= (next 31 513 false ) 3))
(constraint (= (next 30 514 false ) 3))
(constraint (= (next 31 492 false ) 3))
(constraint (= (next 30 496 false ) 3))
(constraint (= (next 30 510 false ) 3))
(constraint (= (next 31 508 false ) 3))
(constraint (= (next 31 504 false ) 3))
(constraint (= (next 30 508 false ) 3))
(constraint (= (next 31 506 false ) 3))
(constraint (= (next 31 505 false ) 3))
(constraint (= (next 30 508 false ) 3))
(constraint (= (next 31 502 false ) 3))
(constraint (= (next 32 492 false ) 3))
(constraint (= (next 31 484 false ) 3))
(constraint (= (next 30 488 false ) 3))
(constraint (= (next 30 473 false ) 3))
(constraint (= (next 31 462 false ) 3))

(check-synth)
