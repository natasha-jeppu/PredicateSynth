(set-logic LIA)
(synth-fun next ((water Int) (methane Int) (pump Bool) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 5
				 (ite StartBool Start Start)))

	(Var Int (
			 1
			 2
			 17
			 29
			 485
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

(constraint (= (next 30 525 true ) 5))
(constraint (= (next 30 518 true ) 5))
(constraint (= (next 29 510 true ) 5))
(constraint (= (next 29 508 true ) 5))
(constraint (= (next 30 502 true ) 5))
(constraint (= (next 30 500 true ) 5))
(constraint (= (next 30 490 true ) 5))
(constraint (= (next 30 493 true ) 5))
(constraint (= (next 30 495 true ) 5))
(constraint (= (next 30 490 true ) 5))
(constraint (= (next 29 481 true ) 5))
(constraint (= (next 29 483 true ) 5))
(constraint (= (next 28 473 true ) 5))
(constraint (= (next 29 459 true ) 5))
(constraint (= (next 29 457 true ) 5))
(constraint (= (next 28 464 true ) 5))
(constraint (= (next 29 469 true ) 5))
(constraint (= (next 28 474 true ) 5))
(constraint (= (next 29 468 true ) 5))
(constraint (= (next 29 477 true ) 5))
(constraint (= (next 30 471 true ) 5))
(constraint (= (next 29 488 true ) 5))
(constraint (= (next 30 478 true ) 5))
(constraint (= (next 29 482 true ) 5))
(constraint (= (next 29 483 true ) 5))
(constraint (= (next 29 484 true ) 5))
(constraint (= (next 29 483 true ) 5))
(constraint (= (next 30 482 true ) 5))

(check-synth)
